using System;
using System.Windows.Forms;
using System.Collections.Generic;
using System.Xml.Serialization;
using System.IO;
using megafon_base;

namespace megafon.ui
{
	public partial class Form1 : Form
	{
		public string FileName = "phones.phns";
		public int elements { get; private set; }
		public List<Megafon> mainList;

		private void add( Megafon inf )
		{
			mainList.Add(inf);
			listView1.Items.Add(new ListViewItem(new string[] {
				inf.PhoneNumber,
				inf.FullName,
				inf.Tariff.ToString()
			}));
			elements++;
		}

		public Form1()
		{
			mainList = new List<Megafon>();
			elements = 0;
			InitializeComponent();
		}

		private void Form1_Load(object sender, EventArgs e) {
			listView1.Columns.Add("телефон", 150);
			listView1.Columns.Add("ФИО", 200);
			listView1.Columns.Add("тариф",100);

			openFileDialog1.FileName = FileName;
			openFileDialog1.Filter = "(*.phns)|*.phns";
			openFileDialog1.InitialDirectory = Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);

			saveFileDialog1.FileName = FileName;
			saveFileDialog1.Filter = "(*.phns)|*.phns";
			saveFileDialog1.InitialDirectory = Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);

			button4.Enabled = false;
			button5.Enabled = false;
		}

		private void listView1_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (listView1.SelectedItems.Count > 0 && listView1.SelectedItems[0] != null)
			{
				button4.Enabled = true;
				button5.Enabled = true;
			}
			else
			{
				button4.Enabled = false;
				button5.Enabled = false;
			}
		}

		private void openFileDialog1_FileOk(object sender, System.ComponentModel.CancelEventArgs e)
		{
			string fileName = openFileDialog1.FileNames[0];
			using (var fl = File.OpenRead(fileName))
			{
				List<Megafon> buffer = (List<Megafon>)new XmlSerializer(typeof(List<Megafon>)).Deserialize(fl);

				listView1.Items.Clear();
				mainList = new List<Megafon>();
				elements = 0;

				foreach (var v in buffer)
					add(v);

				FileName = fileName;
				openFileDialog1.FileName = FileName;
			}
		}

		private void button1_Click(object sender, EventArgs e)
		{
			openFileDialog1.ShowDialog();
		}

		private void button2_Click(object sender, EventArgs e)
		{
			saveFileDialog1.ShowDialog();
		}

		private void button3_Click(object sender, EventArgs e)
		{
			var inforow = new addedit(new Megafon());
			var dialog = inforow.ShowDialog(this);
			if (dialog == DialogResult.OK)
				add(inforow.info);
		}

		private void button4_Click(object sender, EventArgs e)
		{
			var id = listView1.SelectedItems[0].Index;
			listView1.Items[id].Remove();
			mainList[id] = null;
		}

		private void button5_Click(object sender, EventArgs e)
		{
			var id = listView1.SelectedItems[0].Index;
			var inforow = new addedit(mainList[id]);
			var dialog = inforow.ShowDialog(this);
			if (dialog == DialogResult.OK)
			{
				mainList[id] = inforow.info;
				listView1.Items[id] = new ListViewItem(new string[] {
					mainList[id].PhoneNumber,
					mainList[id].FullName,
					mainList[id].Tariff.ToString()
					});
			}
		}

		private void saveFileDialog1_FileOk(object sender, System.ComponentModel.CancelEventArgs e)
		{
			string fileName = saveFileDialog1.FileNames[0];
			using (var file = File.Create(fileName))
			{
				new XmlSerializer(typeof(List<Megafon>)).Serialize(file, mainList);
				FileName = fileName;
				saveFileDialog1.FileName = FileName;
			}
		}
	}
}
