﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication1.Models;
using System.Xml.Serialization;
using System.IO;
using System.Web.Hosting;
using OfficeOpenXml;
using megafon_base;
using System.Data.Entity.Migrations;

namespace WebApplication1.Controllers
{
	public class HomeController : Controller
	{
		
		private ApplicationDbContext db = new ApplicationDbContext();

		// GET: DbMegafons
		public ActionResult Index()
		{
			return View(db.User.ToList());
		}

		// GET: DbMegafons/Details/5
		public ActionResult Details(int? id)
		{
			if (id == null)
			{
				return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
			}
			Megafon dbMegafon = db.User.Find(id);
			if (dbMegafon == null)
			{
				return HttpNotFound();
			}
			return View(dbMegafon);
		}

		// GET: DbMegafons/Create
		public ActionResult Create()
		{
			return View();
		}

		// POST: DbMegafons/Create
		// Чтобы защититься от атак чрезмерной передачи данных, включите определенные свойства, для которых следует установить привязку. Дополнительные 
		// сведения см. в статье https://go.microsoft.com/fwlink/?LinkId=317598.
		[HttpPost]
		[ValidateAntiForgeryToken]
		public ActionResult Create([Bind(Include = "ID,PhoneNumber,FullName,Address,BuyDate,Tariff")] Megafon dbMegafon)
		{
			if (ModelState.IsValid)
			{
				db.User.Add(dbMegafon);
				db.SaveChanges();
				return RedirectToAction("Index");
			}

			return View(dbMegafon);
		}

		// GET: DbMegafons/Edit/5
		public ActionResult Edit(int? id)
		{
			if (id == null)
			{
				return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
			}
			Megafon dbMegafon = db.User.Find(id);
			if (dbMegafon == null)
			{
				return HttpNotFound();
			}
			return View(dbMegafon);
		}

		// POST: DbMegafons/Edit/5
		// Чтобы защититься от атак чрезмерной передачи данных, включите определенные свойства, для которых следует установить привязку. Дополнительные 
		// сведения см. в статье https://go.microsoft.com/fwlink/?LinkId=317598.
		[HttpPost]
		[ValidateAntiForgeryToken]
		public ActionResult Edit([Bind(Include = "ID,PhoneNumber,FullName,Address,BuyDate,Tariff")] Megafon dbMegafon)
		{
			if (ModelState.IsValid)
			{
				db.Entry(dbMegafon).State = EntityState.Modified;
				db.SaveChanges();
				return RedirectToAction("Index");
			}
			return View(dbMegafon);
		}

		// GET: DbMegafons/Delete/5
		public ActionResult Delete(int? id)
		{
			if (id == null)
			{
				return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
			}
			Megafon dbMegafon = db.User.Find(id);
			if (dbMegafon == null)
			{
				return HttpNotFound();
			}
			return View(dbMegafon);
		}

		// POST: DbMegafons/Delete/5
		[HttpPost, ActionName("Delete")]
		[ValidateAntiForgeryToken]
		public ActionResult DeleteConfirmed(int id)
		{
			Megafon dbMegafon = db.User.Find(id);
			db.User.Remove(dbMegafon);
			db.SaveChanges();
			return RedirectToAction("Index");
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing)
			{
				db.Dispose();
			}
			base.Dispose(disposing);
		}

		public ActionResult About()
		{
			ViewBag.Message = "Your application description page.";

			return View();
		}

		public ActionResult Contact()
		{
			ViewBag.Message = "Your contact page.";

			return View();
		}

		[HttpPost]
		public ActionResult Upload(HttpPostedFileBase file)
		{
			if (file != null && file.ContentLength > 0)
			{
				List<Megafon> buffer = (List<Megafon>)new XmlSerializer(typeof(List<Megafon>)).Deserialize(file.InputStream);

				foreach (var value in buffer)
				{

					db.User.Add(value);
					db.SaveChanges();
				}
			}

			return RedirectToAction("Index");
		}

		public ActionResult Download()
		{
			var ms = new MemoryStream();
			FileInfo newFile = new FileInfo(HostingEnvironment.ApplicationPhysicalPath + @"\База данных megafon");
			using (ExcelPackage Package = new ExcelPackage(newFile))
			{

				var worksheet = Package.Workbook.Worksheets.Add("База данных megafon");

				var i = 1;
				foreach (var g in db.User)
				{
					worksheet.Cells[i, 1].Value = g.ID;
					worksheet.Cells[i, 2].Value = g.PhoneNumber;
					worksheet.Cells[i, 3].Value = g.Address;
					worksheet.Cells[i, 4].Value = g.BuyDate.ToString();
					worksheet.Cells[i, 5].Value = g.Tariff.ToString();
					i++;
				}

				// Заполнение файла Excel вышими данными
				Package.SaveAs(ms);
			}

			return File(ms.ToArray(), "application/ooxml", (newFile.Name).Replace(" ", "_") + ".xlsx");
		}
	}
}
