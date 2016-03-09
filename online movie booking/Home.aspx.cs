using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_movie_booking
{
    public partial class Home : System.Web.UI.Page
    {
        users u = new users();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            u.uname = TextBox1.Text;
            u.uemail = TextBox2.Text;
            u.upass = Convert.ToInt16(TextBox3.Text);
            u.registeruser(u);
            lblreg.Text = "<script>alert('Registered Successfully..........') </script>";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            
        }



        protected void Button2_Click1(object sender, EventArgs e)
        {
            string uemail = TextBox5.Text;
            string upass = TextBox6.Text;

            if (uemail != "" & upass != "")
            {
                System.Data.DataTable dd = u.userlogin(uemail, upass);
                if (dd.Rows.Count > 0)
                {
                    Session["userID"] = dd.Rows[0]["userID"];
                    Session["uname"] = dd.Rows[0]["uname"];
                    Response.Redirect("AllMovies2.aspx");
                }

                else
                {
                    Label1.Text = "please enter correct info...";
                }
            }

            else
            {
                Label1.Text = "please enter username and password";

            }
        }
    }
}

