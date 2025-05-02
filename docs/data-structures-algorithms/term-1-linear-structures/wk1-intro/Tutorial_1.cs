/**
* Week 1 Tutorial Solution
* Date: 31/1/22
* Timing a segment of code using: StopWatch class, TimeSpan struct
* See: https://docs.microsoft.com/en-us/dotnet/api/system.diagnostics.stopwatch?view=net-6.0
*      https://docs.microsoft.com/en-us/dotnet/api/system.timespan?view=net-6.0
* 
* **/

using System ;              // TimeSpan
using System.Diagnostics ;  // StopWatch ;


namespace Tutorial_1
{ 
    class ArraySearch : AccessStatus  // uses the 2 Tube Station enumeration types
    {
        const int NOT_FOUND = -1 ;

        public static int Search(int[] array, int value)
        {
                for (int i = 0; i < array.Length; i++)
                {
                    if (value == array[i])
                    {
                        return i;
                    }
                    //else
                    //{ // do nothing }
                    //}
                }
                return NOT_FOUND;
        }

        static void Main(string[] args)
        {
            // Ex 1. TubeStaion class 

            Console.WriteLine("Testing TubeStaion class ") ;
            Console.WriteLine() ;

            TubeStation OxfordCircus = new TubeStation() ;

            TubeStation RegentsPark = new TubeStation( "RegentsPark", "Bakerloo", AccessStatus.ACCESS.Lift, 
                                                          1, AccessStatus.STATUS.Open  ) ;

            TubeStation Euston = new TubeStation("Euston", "Victoria", AccessStatus.ACCESS.Stairs,
                                                       1, AccessStatus.STATUS.Open);

            Console.WriteLine( OxfordCircus.ToString() ) ;
            Console.WriteLine();

            Console.WriteLine("Testing Regents Park TubeStaion: ");
            Console.WriteLine( RegentsPark.ToString() );
            Console.WriteLine();

            Console.WriteLine("Testing Euston TubeStaion: ");
            Console.WriteLine( Euston.ToString());
            Console.WriteLine();

            ///////////////////////////////////////////////////////////////

            // Ex 4. Timing Linear Search algorithm

            Console.WriteLine("Timing Linear Search algorithm") ;
            Console.WriteLine() ;


            int[] numbers = { 42, 78, 31, 12, 25, 10, 9, 24, 87, 13 };
            int value = 13;
            int index = NOT_FOUND;

            Stopwatch timer = new Stopwatch();

            int COUNT = 10000000;

            timer.Start();
            for (int i = 0; i < COUNT; i++)
            {
                index = Search(numbers, value);
            }
            timer.Stop();

            TimeSpan time = timer.Elapsed ;
            
            // Format and display the TimeSpan value.
            string elapsedTime = String.Format( "{0:00}:{1:00}:{2:00}.{3:00}",
                                                 time.Hours, time.Minutes, time.Seconds,
                                                 time.Milliseconds / 10              ) ;

            string elapsedSeconds = String.Format("{0:00}.{1:00}", 
                                                 time.Seconds,  ( time.Milliseconds / 10) ) ;

            string elapsedMS = String.Format("{0}", time.Milliseconds ) ;

            string elapsedTotalMS = String.Format("{0}", time.TotalMilliseconds ) ;

            Console.WriteLine("Index of Value {0} is {1}", value, index ) ;
            Console.WriteLine();

            Console.WriteLine("Time taken for {0} searches: {1}", COUNT, elapsedTime) ;
            Console.WriteLine();

            Console.WriteLine("Time taken for {0} searches: {1} seconds", COUNT, elapsedSeconds ) ;
            Console.WriteLine();

            Console.WriteLine("Time taken for {0} searches: {1} milliseconds", COUNT, elapsedMS);
            Console.WriteLine();

            Console.WriteLine("Time taken for {0} searches: {1} milliseconds (Total)", 
                                        COUNT, elapsedTotalMS);
            Console.WriteLine();


            value = 25;

            System.Console.WriteLine("Index of Value " + value +
                                         " is " + Search(numbers, value));

         }

     }

 }

