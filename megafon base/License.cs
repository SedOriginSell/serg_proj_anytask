using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Security.Cryptography.Xml;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Serialization;

namespace ildLicense
{
	public class LicenseDto
	{
		public string LicenseeName { get; set; }
		public DateTime ValidUntil { get; set; }
		public List<string> AllowedFeatures { get; set; }
	}

	public class LicenseProj
	{
		public bool HasLicense { get; private set; }
		public string License { get; private set; }
		public DateTime ValidUntil { get; private set; }
		public List<string> enablesdFeatures { get; private set; }

		public string secretKey { get; set; }
		public string publicKey { get; set; }


		public LicenseProj()
		{
			GenerateNewKeyPair();
		}

		public LicenseProj(string SecretKey)
		{
			secretKey = SecretKey;
		}

		public LicenseProj(string SecretKey, string PublicKey)
		{
			secretKey = SecretKey;
			publicKey = PublicKey;
		}

		private void GenerateNewKeyPair()
		{
			using (var rsaCsp = new RSACryptoServiceProvider())
			{
				secretKey = rsaCsp.ToXmlString(true);
				publicKey = rsaCsp.ToXmlString(false);
				File.WriteAllText("private.xml", secretKey);
				File.WriteAllText("public.xml", publicKey);
			}

		}

		// Sign an XML file.
		// This document cannot be verified unless the verifying
		// code has the key with which it was signed.

		public static void SignXml(XmlDocument xmlDoc, RSA Key)
		{
			// Check arguments.
			if (xmlDoc == null)
				throw new ArgumentException("xmlDoc");
			if (Key == null)
				throw new ArgumentException("Key");

			// Create a SignedXml object.
			SignedXml signedXml = new SignedXml(xmlDoc);
			// Add the key to the SignedXml document.
			signedXml.SigningKey = Key;

			// Create a reference to be signed.
			Reference reference = new Reference();
			reference.Uri = "";

			// Add an enveloped transformation to the reference.
			XmlDsigEnvelopedSignatureTransform env = new XmlDsigEnvelopedSignatureTransform();
			reference.AddTransform(env);
			// Add the reference to the SignedXml object.
			signedXml.AddReference(reference);
			// Compute the signature.
			signedXml.ComputeSignature();

			// Get the XML representation of the signature and save
			// it to an XmlElement object.
			XmlElement xmlDigitalSignature = signedXml.GetXml();
			// Append the element to the XML document.
			xmlDoc.DocumentElement.AppendChild(xmlDoc.ImportNode(xmlDigitalSignature, true));
		}

		public void CreateLicenseFile(LicenseDto dto, string fileName)
		{
			var ms = new MemoryStream();
			new XmlSerializer(typeof(LicenseDto)).Serialize(ms, dto);

			// Create a new CspParameters object to specify
			// a key container.
			// Create a new RSA signing key and save it in the container.
			RSACryptoServiceProvider rsaKey = new RSACryptoServiceProvider();
			rsaKey.FromXmlString(secretKey);

			// Create a new XML document.
			XmlDocument xmlDoc = new XmlDocument();

			// Load an XML file into the XmlDocument object.
			xmlDoc.PreserveWhitespace = true;
			ms.Seek(0, SeekOrigin.Begin);
			xmlDoc.Load(ms);
			SignXml(xmlDoc, rsaKey);
			xmlDoc.Save(fileName);
		}

		// Verify the signature of an XML file against an asymmetric
		// algorithm and return the result.

		public static Boolean VerifyXml(XmlDocument Doc, RSA Key)
		{
			// Check arguments.
			if (Doc == null)
				throw new ArgumentException("Doc");

			if (Key == null)
				throw new ArgumentException("Key");

			// Create a new SignedXml object and pass it
			// the XML document class.
			SignedXml signedXml = new SignedXml(Doc);

			// Find the "Signature" node and create a new
			// XmlNodeList object.
			XmlNodeList nodeList = Doc.GetElementsByTagName("Signature");

			// Throw an exception if no signature was found.
			if (nodeList.Count <= 0)
				return false;

			if (nodeList.Count >= 2)
				return false;

			// Load the first node.
			signedXml.LoadXml((XmlElement)nodeList[0]);
			// Check the signature and return the result.
			return signedXml.CheckSignature(Key);
		}

		public bool TryLoadLicense(string fileName)
		{
			RSACryptoServiceProvider rsaKey = new RSACryptoServiceProvider();
			rsaKey.FromXmlString(publicKey);

			// Create a new XML document.
			XmlDocument xmlDoc = new XmlDocument();

			// Load an XML file into the XmlDocument object.
			xmlDoc.PreserveWhitespace = true;
			xmlDoc.Load(fileName);

			// Verify the signature of the signed XML.
			bool result = VerifyXml(xmlDoc, rsaKey);

			if (!result)
				return false;

			HasLicense = true;

			LicenseDto dto;
			using (var fileStream = File.OpenRead(fileName))
			{
				dto = (LicenseDto)new XmlSerializer(typeof(LicenseDto)).Deserialize(fileStream);
			}

			License = dto.LicenseeName;
			ValidUntil = dto.ValidUntil;

			enablesdFeatures = new List<string>();
			if (dto.AllowedFeatures != null)
			foreach (var f in dto.AllowedFeatures)
				enablesdFeatures.Add(f);			

			return true;
		}

	}
}
