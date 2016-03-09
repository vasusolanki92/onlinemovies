using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_booking
{
    public partial class ShowMovies2 : System.Web.UI.Page
    {
        users u = new users();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                filldata();
            }
            
        }

        private void filldata()
        {

            //int i = Convert.ToInt16(Request.QueryString["A_ID"]);
            //int j = Convert.ToInt16(Request.QueryString["mwID"]);
            //int k = Convert.ToInt16(Request.QueryString["mtID"]);
            //DataList1.DataSource = u.searchmovie(i,j,k);
            DataList1.DataSource = u.searchmovie(Convert.ToInt16(Request.QueryString["A_ID"]), Convert.ToInt16(Request.QueryString["mtID"]), Convert.ToInt16(Request.QueryString["mwID"]));
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "<script>alert('Website is under construction........' )</script>";
        }
    }
}