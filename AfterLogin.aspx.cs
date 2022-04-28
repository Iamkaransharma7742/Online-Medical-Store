using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class AfterLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        DataSet ds=(DataSet)Session["ds"];
        TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();
        TextBox2.Text = ds.Tables[0].Rows[0][1].ToString();
        TextBox3.Text = ds.Tables[0].Rows[0][2].ToString();
        TextBox4.Text = ds.Tables[0].Rows[0][3].ToString();
        
    }
}
