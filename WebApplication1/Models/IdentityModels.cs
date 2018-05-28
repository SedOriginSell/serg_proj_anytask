using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

using megafon_base;


namespace WebApplication1.Models
{
    // В профиль пользователя можно добавить дополнительные данные, если указать больше свойств для класса ApplicationUser. Подробности см. на странице https://go.microsoft.com/fwlink/?LinkID=317594.
    public class ApplicationUser : IdentityUser
    {
        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<ApplicationUser> manager)
        {
            // Обратите внимание, что authenticationType должен совпадать с типом, определенным в CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
            // Здесь добавьте утверждения пользователя
            return userIdentity;
        }
    }

    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
            : base("DefaultConnection", throwIfV1Schema: false)
        {
			Database.SetInitializer(new DropCreateDatabaseIfModelChanges<ApplicationDbContext>());
		}

        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }

		public DbSet<DbMegafon> User { get; set; }
	}


	public class DbMegafon
	{
		[Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		public int ID { get; set; }
		//номер телефона
		public string PhoneNumber { get; set; }

		//ФИО владельца
		public string FullName { get; set; }

		//адрес владельца
		public string Address { get; set; }

		//дата приобретения сим карты
		public DateTime BuyDate { get; set; }

		//тариф
		public Rate Tariff { get; set; }


		public DbMegafon()
		{
			FullName = "";
			PhoneNumber = "";
			Address = "";
			BuyDate = DateTime.Now;
			Tariff = Rate.ПЕРВЫЙ;
		}

		public static Rate GetRate(int indx)
		{
			switch (indx)
			{
				case 0:
					return Rate.ПЕРВЫЙ;
				case 1:
					return Rate.ВТОРОЙ;
				case 2:
					return Rate.ТРЕТИЙ;
			}
			return Rate.ПЕРВЫЙ;
		}
		public static int GetRateIndx(Rate a)
		{
			switch (a)
			{
				case Rate.ПЕРВЫЙ:
					return 0;
				case Rate.ВТОРОЙ:
					return 1;
				case Rate.ТРЕТИЙ:
					return 2;
			}
			return 0;
		}
	}

	public enum Rate
	{
		ПЕРВЫЙ = 560,
		ВТОРОЙ = 890,
		ТРЕТИЙ = 1299,
	}
}