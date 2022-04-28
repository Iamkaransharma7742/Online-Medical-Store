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

public partial class WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        BLcode bcobj = new BLcode();
        bcobj.UserID = txtUser.Text;
        bcobj.Password = txtPassword.Text;

        HttpCookie cookieobjectuserid = new HttpCookie("userid");
        cookieobjectuserid.Value = txtUser.Text;
        Response.Cookies.Add(cookieobjectuserid);


        if (bcobj.CallUserValidation())
        {
            bcobj.CallInsertIntoLogsTable();

            DataSet ds = bcobj.CallUserInfo();
            Session["ds"] = ds;
            Response.Redirect("AfterLogin.aspx");

        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "pls check the userid and Password";
        }

    }

}
