using System.Web.Mvc;
using NHValModelValidators.Models;

namespace NHValModelValidators.Controllers
{
    public class CustomerController : Controller
    {
        //
        // GET: /Customer/
        public ActionResult Index()
        {
            var customers = Customer.GetCustomers(10);

            return View(customers);
        }

        //
        // GET: /Customer/Create
        public ActionResult Create()
        {
            var customer = new Customer();

            return View(customer);
        } 

        //
        // POST: /Customer/Create
        [HttpPost]
        public ActionResult Create(Customer customer)
        {
            TempData["Message"] = "Customer Is Valid: " + customer.IsValid();

            return View(customer);
        }

        //
        // GET: /Customer/Create
        public ActionResult CreateWithClientVal()
        {
            var customer = new Customer();

            return View(customer);
        }

        //
        // POST: /Customer/Create
        [HttpPost]
        public ActionResult CreateWithClientVal(Customer customer)
        {
            TempData["Message"] = "Customer Is Valid: " + customer.IsValid();

            return View(customer);
        }
    }
}
