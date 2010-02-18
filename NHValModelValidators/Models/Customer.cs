using System.Collections.Generic;
using NHibernate.Validator.Constraints;

namespace NHValModelValidators.Models
{
    public class Customer : BaseObject
    {
        [NotNullNotEmpty]
        [Length(10)]
        public virtual string CompanyName { get; set; }

        [NotNullNotEmpty]
        public virtual string ContactName { get; set; }

        [NotNullNotEmpty]
        public virtual string Country { get; set; }

        [NotNullNotEmpty]
        public virtual string Fax { get; set; }

        [Range(1, 200, "Must be between 1 and 200")]
        public virtual int Age { get; set; }

        public static IList<Customer> GetCustomers(int n)
        {
            var customers = new List<Customer>();

            for (int i = 0; i < n; i++)
            {
                customers.Add(new Customer { Id = i + 1, CompanyName = "Company" + i, ContactName = "Contact" + i, Country = "USA", Fax = "Fax", Age = i + 1 });
            }

            return customers;
        }
    }
}