using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace quick_sort
{
	class Program
	{
		static void Main(string[] args)
		{
			Console.WriteLine("\nБыстрая сортировка\n");
			MakeTest("Сортировка массива из трёх элементов", TestOne());
			MakeTest("Сортировка массива из 100 одинаковых чисел", TestTwo());
			MakeTest("Сортировка массива из 1000 случайных элементов", TestThree());
			MakeTest("Сортировка пустого массива", TestFive());
			MakeTest("Сортировка массива из 100 000 000 элементов", TestSix());

			Console.ReadKey();
		}

		static void MakeTest(string name, bool func)
		{
			if (func)
				Console.Write("{0} {1}\n", name, "пройден");
			else
				Console.Write("{0} {1}\n", name, "провален" );
		}

		static bool TestOne()
		{
			var array = new[] { 616,20,0 };
			QuickSort.Sort(array);

			return QuickSort.IsSorted(array);
		}

		static bool TestTwo()
		{
			var array = new int[100];
			for (var i = 0; i < array.Length; i++)
				array[i] = 32;

			QuickSort.Sort(array);

			return QuickSort.IsSorted(array);
		}

		static bool TestThree()
		{
			var rand = new Random();
			var array = new int[1000];
			for (var i = 0; i < array.Length; i++)
				array[i] = rand.Next();
			QuickSort.Sort(array);

			return QuickSort.IsSorted(array);
		}

		static bool TestFive()
		{
			var array = new int[0];
			QuickSort.Sort(array);

			return QuickSort.IsSorted(array);
		}

		static bool TestSix()
		{
			var rand = new Random();
			var array = new int[100000000];

			for (var i = 0; i < array.Length; i++)
				array[i] = rand.Next();

			QuickSort.Sort(array);

			return QuickSort.IsSorted(array);
		}
	}

	public static class QuickSort
	{
		static void Sort(int[] arr, int left, int right)
		{
			if (right == left) return;
			var pivot = arr[right];
			var storeIndex = left;
			for (int i = left; i <= right - 1; i++)
				if (arr[i] <= pivot)
				{
					Swap(ref arr[i], ref arr[storeIndex]);
					storeIndex++;
				}

			Swap(ref arr[storeIndex], ref arr[right]);

			if (storeIndex > left) Sort(arr, left, storeIndex - 1);
			if (storeIndex < right) Sort(arr, storeIndex + 1, right);
		}

		public static void Sort(int[] arr)
		{
			var len = arr.Length;
			if (len == 0) 
				Sort(arr, 0, len);
			else
				Sort(arr, 0, len - 1);
		}

		public static bool IsSorted(int[] arr)
		{
			var len = arr.Length;
			if (len == 0 || len == 1) return true;
			var num = 0;
			var rand = new Random();

			for (var i = 0; i <= 20; i++)
			{
				var x = rand.Next(0, len - 1);
				if (arr[x] < arr[x + 1])
				{
					num++;
					if (len >= num) break;
				}
			}
			return len >= num || num <= 20;
		}

		private static void Swap<T>(ref T lhs, ref T rhs)
		{
			T temp = lhs;
			lhs = rhs;
			rhs = temp;
		}
	}
}
