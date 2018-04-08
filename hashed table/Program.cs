using System;
using bin_search;
using quick_sort;

namespace hashed_table
{
	public class HshdTbl
	{
		private int[] keys;
		private object[] values;
		private int num;
		public int Length { get; private set; }

		public HshdTbl(int size)
		{
			Length = size;
			keys = new int[size];
			values = new object[size];
			num = 0;
		}

		public void PutPair(object key, object value)
		{
			var hashdKey = key.GetHashCode();
			int id;
			if ((id = BinSrc.BinarySearch(keys, hashdKey)) != -1)
			{
				values[id] = value;
				return;
			}
			else if (num < Length)
			{
				keys[num] = hashdKey;
				values[num] = value;
				num++;

				if (!QuickSort.IsSorted(keys))
					QuickSort.Sort(keys, values);

				return;
			}
			else
			{
				Console.WriteLine("Преувличение: {0}!", num + 1);
				return;
			}

		}

		public object GetValueByKey(object key)
		{
			var hashdKey = key.GetHashCode();
			var id = BinSrc.BinarySearch(keys, hashdKey);

			return id != -1 ? values[id] : null;
		}
	}


	class Program
	{
		static void Main(string[] args)
		{
			Console.WriteLine("\nХэш таблицы");
			TestTable("Добавление 1 000 000 элементов и поиск 200 000 недобавленных ключей", HugeAndFadedFindTest());
			TestTable("Добавление трёх элементов, поиск трёх элементов", ThreeElementsTest());
			TestTable("Добавление одного и того же ключа дважды с разными значениями", SimilarKeysTest());
			TestTable("Добавление 10000 элементов и поиск одного из них", HugeAndOneFindTest());

			Console.ReadKey();
		}

		static void TestTable(string name, object func)
		{
			Console.Write("{0} {1}\n", name, (bool)func ? "пройден" : "завален");
		}

		static object ThreeElementsTest()
		{
			var table = new HshdTbl(3);
			table.PutPair("123", 1);
			table.PutPair("12", 51);
			table.PutPair("357", 235);

			return (int)table.GetValueByKey("357") == 235;
		}

		static object SimilarKeysTest()
		{
			var table = new HshdTbl(1);

			table.PutPair("a", 89999);
			table.PutPair("a", 1);

			return (int)table.GetValueByKey("a") == 1;
		}

		static object HugeAndOneFindTest()
		{
			var tbl = new HshdTbl(10000);
			for (var i = 1; i <= tbl.Length; i++)
				tbl.PutPair(i, i);

			return (int)tbl.GetValueByKey(100) == 100;
		}

		static object HugeAndFadedFindTest()
		{
			var tbl = new HshdTbl(1000000);
			for (var i = 1; i <= tbl.Length; i++)
				tbl.PutPair(i, i * 2);

			for (var i = tbl.Length + 1; i <= (tbl.Length * 1.2); i++)
				if ((object)tbl.GetValueByKey(i) != null)
					return false;

			return true;
		}

	}

}
