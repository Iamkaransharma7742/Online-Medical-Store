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

public partial class UpdateContactInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        BLcode b = new BLcode();
        b.UserID = Session["a"].ToString();
        b.OrgName = txtOrgname.Text;

        b.Area = txtArea.Text;
        b.Address = txtAddress.Text;
        b.City = txtCity.Text;
        b.ContactPhones = txtPhone.Text;
        lblMsg.Text = b.CallUpdateUserInfo();
    }
}
