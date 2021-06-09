using System;

namespace AddressBook_ADO
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to Employee Payroll!");
            PersonRepo repo = new PersonRepo();
            repo.GetSize();
            Console.ReadKey();
        }
    }
}
