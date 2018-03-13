using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bin_search
{
	class Program
	{

		static void Main(string[] args)
		{
			Console.WriteLine("\nБинарный поиск\n");
			TestStandartMassive();
			TestNegativeNumbers();
			TestNonExistentElement();
			TestEmptyMassive();
			TestHugeMassive();
			TestDubElement();
			

			Console.ReadKey();
		}

		private static void TestStandartMassive()
		{
			int[] negativeNumbers = new[] { -5, -4, -3, -2, 2 };

			if (BinSrc.BinarySearch(negativeNumbers, 2) != 4)
				Console.WriteLine("(!) Поиск не нашёл 2 среди -5, -4, -3, -2 , 5");
			else
				Console.WriteLine("Поиск в массиве из 5 элементов пройден");
		}

		private static void TestNegativeNumbers()
		{
			int[] negativeNumbers = new[] { -5, -4, -3, -2 };

			if (BinSrc.BinarySearch(negativeNumbers, -3) != 2)
				Console.WriteLine("(!) Поиск не нашёл -3 среди -5, -4, -3, -2");
			else
				Console.WriteLine("Поиск отрицательного числа пройден");
		}

		private static void TestNonExistentElement()
		{
			int[] negativeNumbers = new[] { -5, -4, -3, -2 };

			if (BinSrc.BinarySearch(negativeNumbers, -1) >= 0)
				Console.WriteLine("(!) Поиск нашёл -1 среди -5, -4, -3, -2");
			else
				Console.WriteLine("Поиск отсутствующего элемента пройден");
		}

		private static void TestEmptyMassive()
		{
			int[] numbers = new int[0];

			if (BinSrc.BinarySearch(numbers, 55) != -1)
				Console.WriteLine("(!) Поиск не нашёл 55 в пустом массиве");
			else
				Console.WriteLine("Поиск в пустом массиве пройден");
		}
		private static void TestHugeMassive()
		{
			int[] numbers = new int[1000001];
			for (var i = 0; i < numbers.Length; i++)
				numbers[i] = i;
			if (BinSrc.BinarySearch(numbers, 11111) != 11111)
				Console.WriteLine("(!) Поиск не нашёл 11111 в new int[1000001]");
			else
				Console.WriteLine("Поиск в new int[1000001] пройден");
		}
		private static void TestDubElement()
		{
			int[] numbers = new[] {1,1,1,2,3,6};
			int bsrtc = BinSrc.BinarySearch(numbers, 1);
			if (bsrtc != 2)
				Console.WriteLine("(!) Поиск не нашёл 3 среди 1,1,1,2,3,6 {0}", bsrtc);
			else
				Console.WriteLine("Поиск повторяющегося элемента пройден");
		}

	}

	public static class BinSrc
	{
		public static int BinarySearch(int[] arr, int val)
		{
			int low = 0;
			int high = arr.Length - 1;
			while (low <= high)
			{
				int mid = ((low + high) / 2);
				var indxdval = arr[mid];

				if ((object)indxdval == null) continue;
				if (val < indxdval)
					high = mid - 1;
				else if (val > indxdval)
					low = mid + 1;
				else if (val == indxdval)
					return mid;
			}
			return -1;
		}
	}
}
