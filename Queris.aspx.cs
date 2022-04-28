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

public partial class SendQuerisToAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDoYou.Visible = false;
        btnYes.Visible = false;
        btnNo.Visible = false;
        GridView1.Visible = false;
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        BLcode b = new BLcode();
        b.UserMessage = TextBox1.Text;
        b.UserID = Request.Cookies["userid"].Value;

        b.CallInsrtIntoQueries();
        TextBox1.Visible = false;
        btnSend.Visible = false;
        lblTypeqry.Visible = false;
        lblDoYou.Visible = true;
        btnNo.Visible=true;
        btnYes.Visible=true;

        
       
        
        
    }
    protected void btnYes_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox1.Visible = true;
        btnSend.Visible = true;

    }
    protected void btnNo_Click(object sender, EventArgs e)
    {
        Response.Redirect("AfterLogin.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Visible = false;
        btnSend.Visible = false;

        lblDoYou.Visible = true;
        btnYes.Visible = true;
        btnNo.Visible = true;
        GridView1.Visible = true; ;
        BLcode b = new BLcode();
        b.UserID = Request.Cookies["userid"].Value;
        DataSet ds=b.CallSelectReplyQueries();
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}
