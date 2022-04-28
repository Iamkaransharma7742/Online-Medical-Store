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

public partial class admin_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
      if( FormsAuthentication.Authenticate(txtUser.Text,txtPassword.Text))
        {

            FormsAuthentication.RedirectFromLoginPage(txtUser.Text,CheckBox1.Checked);
            Response.Redirect("~/admin/adminhome.aspx");
        }

        else
        Response.Write("invalid userid and password");
    
    }
}
