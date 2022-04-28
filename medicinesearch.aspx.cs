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

public partial class medicinesearch : System.Web.UI.Page
{

   
    
    protected void Page_Load(object sender, EventArgs e)
    {





        if (Session["a"] != null)
        {
            HLinkHome.Visible = false;

        }
        else
            NavigateLinks1.Visible = false;


        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        BLcode b = new BLcode(); 
        b.City = DropDownList1.Text;
        b.MedicineName = TextBox1.Text;
        b.Dosage = TextBox2.Text;
        
        DataSet ds = b.CallMedicineSearch();

        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
