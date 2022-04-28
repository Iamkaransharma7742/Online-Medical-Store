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

public partial class admin_RepliesToQueries : System.Web.UI.Page
{
    static int temp = 0;
   
    protected void SelectDataGV1()
    {
        BLcode b = new BLcode();
       
        DataSet ds = b.CallSelectQueries();
        GridView1.Visible = true;
        GridView1.DataSource = ds;
        GridView1.DataBind();
        btnSend.Visible = false;
        txtReply.Visible = false;
        txtTo.Visible = false;
        Label2.Visible = false;
    }
    protected void SelectDataGv2()
    {

        GridView1.Visible = false;
        GridView2.Visible = true; GridView1.Visible = false;
        BLcode b = new BLcode();
        DataSet ds = b.CallSelectAllReadQueries();
        GridView2.DataSource = ds;
        GridView2.DataBind();
        btnSend.Visible = false;
        txtReply.Visible = false;
        txtTo.Visible = false;
        Label2.Visible = false;

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        
        txtQryID.Visible = false;
        if (!IsPostBack)
        {
            GridView2.Visible = false;
            btnDRead.Visible = false;

            
        }

        SelectDataGV1();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridView1.Visible = true;
        txtReply.Visible = true;
        btnSend.Visible = true;
        txtTo.Visible = true;
        Label2.Visible = true;
        Label l1 = (Label)GridView1.Rows[e.NewSelectedIndex].FindControl("lblUID");
        Label l2 = (Label)GridView1.Rows[e.NewSelectedIndex].FindControl("lblQryID");
        txtTo.Text = l1.Text;
        txtQryID.Text = l2.Text;

    }
   
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridView1.Visible = true;
       Label l1= (Label)GridView1.Rows[e.RowIndex].FindControl("lblUID");
       Label l2 = (Label)GridView1.Rows[e.RowIndex].FindControl("lblQryID");


       BLcode b = new BLcode();
       
       b.QueryID = l2.Text;
       b.UserID = l1.Text;
       b.CallDeleteSelectedQueries();
       SelectDataGV1();
     
     
    
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        
        
        BLcode b = new BLcode();
        b.UserID = txtTo.Text;
        b.QueryID = txtQryID.Text;
        b.ReplyText = txtReply.Text;
        b.CallReplyQueries();
        Page_Load(sender, e);
        if (temp == 1)
            GridView1.Visible = false;
        Label lb = new Label();
        lb.ForeColor = System.Drawing.Color.Green;
        lb.Text = "Message Sent Successfully";
        Panel2.Controls.Add(lb);
        txtReply.Text = "";
    
    
    }
    protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridView2.Visible = true;
        GridView1.Visible = false;
        btnDRead.Visible = true;
        txtReply.Visible = true;
        btnSend.Visible = true;
        txtTo.Visible = true;
        Label2.Visible = true;
        Label l = (Label)GridView2.Rows[e.NewSelectedIndex].FindControl("lblUID");
        txtTo.Text = l.Text;
        temp = 1;
    }
    protected void btnVRead_Click(object sender, EventArgs e)
    {
        btnDRead.Visible = true;
        SelectDataGv2();
    }

    protected void btnDRead_Click(object sender, EventArgs e)
    {
        BLcode b = new BLcode();
        b.CallDeleteAllReadQueries();
    }
    protected void btnUnread_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView2.Visible = false;
        btnDRead.Visible = false;
        Page_Load(sender, e);
    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        GridView1.Visible = false;
        Label l1 = (Label)GridView2.Rows[e.RowIndex].FindControl("lblUID");
        Label l2 = (Label)GridView2.Rows[e.RowIndex].FindControl("lblQryID");


        BLcode b = new BLcode();

        b.QueryID = l2.Text;
        b.UserID = l1.Text;
        b.CallDeleteSelectedQueries();
        SelectDataGv2();
       
    }
}
