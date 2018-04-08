using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace megafon_base
{

	class mega_base
	{
		//номер телефона
		public string PhoneNumber;

		//ФИО владельца
		public string FullName;

		//адрес владельца
		public string Address;

		//дата приобретения сим карты
		public DateTime BuyDate;

		mega_base()
		{
			FullName = "";
			PhoneNumber = "";
			Address = "";
		}
	}
}
