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

public partial class createnewuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
        HyperLink1.Visible = false;
    }
    protected void btncrete_Click(object sender, EventArgs e)
    {
        
        BLcode b = new BLcode();
        b.UserID = txtUsername.Text;
        if (b.CallCheckUser())
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Visible = true;
            Label2.Text = "user name is not available please choose another name";
        }
        else
        {

            b.Password = txtPassword.Text;
            b.OrgName = txtOrgNmae.Text;
            b.Area = txtArea.Text;
            b.Address = txtAddress.Text;
            b.City = txtCity.Text;
            b.ContactPhones = txtContactno.Text;
            b.Squestion = ddlSQuestion.SelectedItem.ToString();
            b.Answer = txtAnswer.Text;
            b.CallCreateNewUser();
            Label2.ForeColor = System.Drawing.Color.Green;
            Label2.Text = "Your account is created pleases click below link to login";
            Label2.Visible = true;
            HyperLink1.Visible = true;

        }
    }
}
