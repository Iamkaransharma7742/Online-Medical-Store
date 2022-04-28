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

public partial class medicinestockupdate : System.Web.UI.Page
{

    DataSet ds;
    BLcode b;


    protected void LoadData()
    {

        b = new BLcode();
        b.UserID = Request.Cookies["userid"].Value;
        ds = b.CallSelectData();
        GridView1.DataSource = ds.Tables[1];
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        LoadData();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //TextBox tb = Session["user"] as TextBox;
        
        b = new BLcode();
        b.MedicineName = TextBox2.Text;
        b.Dosage = TextBox3.Text;
        b.Stock = int.Parse(TextBox4.Text);
        b.UserID = Request.Cookies["userid"].Value.ToString();
        b.CallInsertIntoMedicineTable();
        LoadData();
    
    
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        LoadData();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
      b = new BLcode();
        TextBox t1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt1");
        TextBox t2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt2");
        TextBox t3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt3");
        Label lbl = (Label)GridView1.Rows[e.RowIndex].FindControl("lbl4");
        b.MedicineName = t1.Text;
        b.Dosage = t2.Text;
        b.Stock = int.Parse(t3.Text);
        b.UserID = Request.Cookies["userid"].Value;
        b.ID = int.Parse(lbl.Text);
        b.CallUpdateMedicines();
        b.CallSelectData();
        GridView1.EditIndex = -1;
        LoadData();

    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        LoadData();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label l = (Label)GridView1.Rows[e.RowIndex].FindControl("lbl4");
        BLcode b = new BLcode();
        b.UserID = Request.Cookies["userid"].Value;
        b.ID = int.Parse(l.Text);
        b.CallDeleteFromtblMedicines();
        GridView1.EditIndex = -1;
        LoadData();

    }
}
