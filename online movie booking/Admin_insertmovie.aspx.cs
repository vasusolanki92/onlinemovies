using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_booking
{
    public partial class Admin_insertmovie : System.Web.UI.Page
    {
        users u = new users();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                filldrop1();
            }

        }
         private void filldrop1()
        {
            DropDownList1.DataSource = u.getmoviewood();
            DropDownList1.DataTextField = "mwName";
            DropDownList1.DataValueField = "mwID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Select");
        }

         protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
         {
             filldrop2();
         }

        private void filldrop2()
        {
            DropDownList2.DataSource = u.getmovietype(Convert.ToInt16(DropDownList1.SelectedItem.Value));
            DropDownList2.DataTextField = "mtName";
            DropDownList2.DataValueField = "mtID";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "Select");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            u.mwID =Convert.ToInt16(DropDownList1.SelectedItem.Value);
            u.mtID = Convert.ToInt16(DropDownList2.SelectedItem.Value);
            u.moviename = TextBox1.Text;
            u.mimage = "~/photos/" + FileUpload1.PostedFile.FileName;
            FileUpload1.SaveAs(Server.MapPath(u.mimage));
            u.mrate = Convert.ToInt16(TextBox2.Text);
            u.mdes = TextBox3.Text;
            u.insertmovies(u);
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

       
    }
}