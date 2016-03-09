using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_booking
{
    public partial class User_Manage : System.Web.UI.Page
    {
        users u = new users();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgrd();
            }
           
        }

        private void fillgrd()
        {
            GridView1.DataSource = u.getuser();
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            u.userID = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);
            u.dltuser(u);
            fillgrd();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            fillgrd();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            fillgrd();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            u.userID = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);
            u.uname = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            u.uemail = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            u.updtuser(u);
            GridView1.EditIndex = -1;
            fillgrd();
        }
    }
}