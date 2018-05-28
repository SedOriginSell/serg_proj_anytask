using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
	public class megafon
	{
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


		public megafon()
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