using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace psi_uzduotis1
{
    class Program
    {
        static void Main(string[] args)
        {
            string eilute;
            bool badCount = false;

            double nuokrypis = 0;

            List<double> skaiciuAibe = new List<double>();

            while(true)
            {
                badCount = false;

                Console.WriteLine("Iveskite skaiciu: ");
                eilute = Console.ReadLine();

                if (eilute.ToLower() == "exit") break;

                try
                {
                    Convert.ToDouble(eilute);
                }
                catch
                {
                    badCount = true;
                }

                if (badCount)
                {
                    Console.WriteLine("Ivestas daiktas nera skaicius! veskite per nauja!");
                }
                else
                {
                    nuokrypis = 0;

                    skaiciuAibe.Add(Convert.ToDouble(eilute));

                    Console.WriteLine("Vidurkis: " + skaiciuAibe.Average());

                    foreach(double i in skaiciuAibe)
                    {
                        nuokrypis += Math.Pow(i - skaiciuAibe.Average(), 2);
                        Console.WriteLine(nuokrypis);
                    }

                    nuokrypis *= 1 / Convert.ToDouble(skaiciuAibe.Count);
                    nuokrypis = Math.Sqrt(nuokrypis);

                    Console.WriteLine("Standartinis nuokrypis: " + nuokrypis);
                }
            }
        }
    }
}
