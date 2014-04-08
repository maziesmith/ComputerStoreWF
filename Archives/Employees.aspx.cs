using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CompStore.Model;

namespace CompStore.Archives
{
    public partial class Employees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
        public IQueryable<CompStore.Model.Employee> GridView1_GetData()
        {
            var db = new DBContext();
            IQueryable<CompStore.Model.Employee> result = from b in db.People.OfType<Employee>() 
                                                          select b;
            return result;
        }
    }
}