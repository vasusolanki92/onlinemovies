using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_booking
{
    public partial class AllMovies2 : System.Web.UI.Page
    {
        users u = new users();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                filldatalist();
            }

        }

        private void filldatalist()
        {
            DataList1.DataSource = u.getallmovie();
            DataList1.DataBind();
        }

    }
}