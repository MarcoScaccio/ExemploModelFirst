using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExemploModelFirst
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var db = new BloggingContext())
            {
                Console.Write("Digite um nome para o novo blog: ");
                var nome = Console.ReadLine();

                var blog = new Blog { Nome = nome };
                db.BlogSet.Add(blog);
                db.SaveChanges();

                var query = from b in db.BlogSet
                            orderby b.Nome
                            select b;

                foreach (var item in query)
                {
                    Console.WriteLine(item.Nome);
                }

            }
        }
    }
}
