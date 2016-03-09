using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_booking
{
    public partial class Change_Password : System.Web.UI.Page
    {
        users u = new users();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Session["userID"].ToString());
            u.userID = id;
            u.upass = Convert.ToInt16(TextBox1.Text);
            u.npass = Convert.ToInt16(TextBox2.Text);
            u.changepass(u);
            lbl.Text = "<script>alert('Successfully Change Password.........')</script>";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}