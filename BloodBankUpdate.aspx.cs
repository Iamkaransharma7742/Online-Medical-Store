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
using System.Data.SqlClient;

public partial class AddGroup : System.Web.UI.Page
{ 
   
    

    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        LoadData();
        

    }
    public void LoadData()
    {
        BLcode b = new BLcode();
        b.UserID = Request.Cookies["userid"].Value;
        ds=b.CallSelectData();
        GridView1.DataSource = ds.Tables[3];
        GridView1.DataBind();
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        BLcode b = new BLcode();
        b.BGroup = ddlGroup.Text;
        b.BankName = txtBankName.Text;
        b.Stock = int.Parse(txtStock.Text);
        b.UserID = Request.Cookies["userid"].Value;
        b.CallInsertIntoBloodBanks();
        LoadData();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        LoadData();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txt1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtBgroup");
        TextBox txt2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtStock");
        Label lbl = (Label)GridView1.Rows[e.RowIndex].FindControl("lblID");
        BLcode b = new BLcode();

        b.BGroup = txt1.Text;
        b.Stock = int.Parse(txt2.Text);
        b.UserID = Request.Cookies["userid"].Value;
        b.ID = int.Parse(lbl.Text);
        b.CallUpdateBloodBanks();
 
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Googleconnectionstring"].ToString());
        //SqlCommand cmd = new SqlCommand();
        //cmd.Connection = con;
        //cmd.CommandText = "update tblBloodBanks set BGroup='" + txt1.Text + "', Stock=" + txt2.Text+" where UserID='"+Request.Cookies["userid"].Value+"'";
       GridView1.EditIndex = -1;
       LoadData();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        LoadData();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label l = (Label)GridView1.Rows[e.RowIndex].FindControl("lblID");
        BLcode b = new BLcode();
        b.UserID = Request.Cookies["userid"].Value;
        b.ID = int.Parse(l.Text);
        b.CallDeleteFromtblBloodBanks();
        GridView1.EditIndex = -1;
        LoadData();

    }
}
