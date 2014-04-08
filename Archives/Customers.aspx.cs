using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CompStore.Model;

namespace CompStore.Archives
{
    public partial class Customers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<CompStore.Model.Customer> GridView1_GetData()
        {
            var db = new DBContext();
            IQueryable<CompStore.Model.Customer> result = from b in db.People.OfType<Customer>() select b;
            return result;
        }
    }
}