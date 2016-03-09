using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_movie_booking
{
    public partial class Master : System.Web.UI.MasterPage
    {
        users u = new users();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                filldrop1();
                filldrop2();
                filldrop3();
               
            }
            
        }

        private void filldrop1()
        {
            DropDownList1.DataSource = u.getmoviewood();
            DropDownList1.DataTextField = "mwName";
            DropDownList1.DataValueField = "mwID";
            DropDownList1.DataBind();
            ListItem li = new ListItem();
            li.Value = "0";
            li.Text = "Select";
            DropDownList1.Items.Insert(0, li);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            filldrop2();
           
        }

        private void filldrop2()
        {
            DropDownList2.DataSource = u.getmovietype(Convert.ToInt16(DropDownList1.SelectedItem.Value));
            DropDownList2.DataTextField = "mtName";
            DropDownList2.DataValueField = "mtID";
            DropDownList2.DataBind();
            ListItem li = new ListItem();
            li.Value = "0";
            li.Text = "Select";
            DropDownList2.Items.Insert(0, li);

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            filldrop3();
        }

        private void filldrop3()
        {
            DropDownList3.DataSource = u.getmovie2(Convert.ToInt16(DropDownList2.SelectedItem.Value));
            DropDownList3.DataTextField = "moviename";
            DropDownList3.DataValueField = "A_ID";
            DropDownList3.DataBind();
            ListItem li = new ListItem();
            li.Value = "0";
            li.Text = "Select";
            DropDownList3.Items.Insert(0, li);
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("serach.aspx?A_ID="+ (DropDownList3.SelectedItem.Value));
            Response.Redirect("ShowMovie.aspx?A_ID=" + DropDownList3.SelectedItem.Value +"&mwID="+DropDownList1.SelectedItem.Value+"&mtID="+DropDownList2.SelectedItem.Value);
        }

        
    }
}