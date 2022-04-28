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

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string Password;
        BLcode b = new BLcode();
        b.UserID = txtUserName.Text;
        b.Answer = txtAnswer.Text;
        b.Squestion = ddlSQuestion.SelectedItem.ToString();
       Password= b.CallGivePassword();
       if (Password == "")
       {
           lblMessage.Text = "Details are not matching we can't provide your password with this details";
       }
       else
           lblMessage.Text = "Your Password is  :" + Password;
    }
}
