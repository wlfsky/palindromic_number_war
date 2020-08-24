// C# 20200817 release 模式

namespace WL.Core.ConsoleApp
{
    class Program
    {
        static void Main(string[] args)
        {
            runhw();
        }
        static bool ishuiwen(int n)
        {
            int sn = 0;
            int tn = 0;
            sn = n;
            while (sn != 0)
            {
                tn = tn * 10 + sn % 10;
                sn = sn / 10;
            }
            if (tn == n)
                return true;
            return false;
        }

        static int hw1(int max = 10000000)
        {
            int tx = 0;
            int x = 0;
            for (x = 0; x <= max; x++)
            {
                if (ishuiwen(x) == true)
                    tx++;
            }
            return tx;
        }

        static void runhw() {
            Stopwatch watch = new Stopwatch();
            watch.Start();
            int total = hw1();
            watch.Stop();
            Console.WriteLine($"--{total}-- In milliseconds: {watch.ElapsedMilliseconds}");
        }
    }
}

