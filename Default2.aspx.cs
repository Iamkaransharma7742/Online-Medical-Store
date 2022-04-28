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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RangeValidator1.IsValid = false;
    }
    protected void RangeValidator1_Load(object sender, EventArgs e)
     {
         //if ((int.Parse(RangeValidator1.MinimumValue) <= 6) && (int.Parse(RangeValidator1.MaximumValue) >= 12))
         //{
         //    rangePassword.ControlToValidate = txtPassword.ToString();

         //    rangePassword.ErrorMessage = "Password should between 6 to 12 characters";
         //}
         if (IsPostBack)
         {
             if (int.Parse(RangeValidator1.MaximumValue) >= 8)
             {
                 RangeValidator1.IsValid = false;
                 RangeValidator1.ErrorMessage = "dffgfegv";
                 return;
             }
             else
                 if (int.Parse(RangeValidator1.MinimumValue) <= 4)
                 {
                     RangeValidator1.IsValid = false;
                     RangeValidator1.ErrorMessage = "dffgfegv";

                 }
                 else
                     RangeValidator1.IsValid = true;
         }
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (int.Parse(RangeValidator1.MaximumValue) >= 8)
        {
            RangeValidator1.IsValid = false;
            RangeValidator1.ErrorMessage = "dffgfegv";
            return;
        }

        if (int.Parse(RangeValidator1.MinimumValue) <= 4)
        {
            RangeValidator1.IsValid = false;
            RangeValidator1.ErrorMessage = "dffgfegv";

        }
        else
            RangeValidator1.IsValid = false;
    }
}
