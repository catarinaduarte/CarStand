using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExSAuto
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["marca"] != null)
                {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
             }


             }
            protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
             {
           
        }

       

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Avalon");
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();

        }

        protected void LinkButton3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=BMW");
        }

        protected void LinkButton4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Ford");
        }

        protected void LinkButton5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Honda");
        }

        protected void LinkButton6_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Lexus");
        }

        protected void LinkButton7_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Mercedes Benz");
        }

        protected void LinkButton8_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Nissan");
        }

        protected void LinkButton9_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Tesla");
        }

        protected void LinkButton10_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?marca=Toyota");
        }
    }
}