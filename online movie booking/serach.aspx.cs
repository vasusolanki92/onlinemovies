using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace online_movie_booking
{
    public partial class serach : System.Web.UI.Page
    {
        DataTable dt;
        users u = new users();
        protected void Page_Load(object sender, EventArgs e)
        {
            filldata();
        }

        private void filldata()
        {
           
            int i = Convert.ToInt16(Request.QueryString["A_ID"]);
            DataList1.DataSource = u.searchmovie(i);
            DataList1.DataBind();
        }

       
    }
}