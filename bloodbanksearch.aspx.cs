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

public partial class bloodbanksearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a"] != null)
        {
            HLinkHome.Visible = false;
            NavigateLinks2.Visible = true;
        }
        else
        {
            NavigateLinks2.Visible = false;
            HLinkHome.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        BLcode b = new BLcode();
        b.BGroup = ddlBloodGoup.Text;
        b.City = ddlCity.Text;
        
        DataSet ds = b.CallBloodBankSearch();
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}
