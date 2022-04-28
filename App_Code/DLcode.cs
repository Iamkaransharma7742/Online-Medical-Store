using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DLCode
/// </summary>
public class DLCode
{    
    //SqlCommandBuilder cb;
    SqlDataAdapter da;
    SqlConnection con;
    SqlCommand cmd;
    DataSet ds;
    //string sqlstr;
    
    public DLCode()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void Connection()
    {
         con = new SqlConnection(ConfigurationManager.ConnectionStrings["Googleconnectionstring"].ToString());
        cmd = new SqlCommand();
        cmd.Connection = con;
        
    }

    //public  DataSet DataConnection(string sqlstr)
    //{
    //    SqlConnection con = new SqlConnection("user id=sa;password=test;database=Google;data source=S-794777571E694");
    //    SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);
    //    ds = new DataSet();
    //    da.Fill(ds);
    //    return ds;
    //}
    

    //public DataSet DataConnection2(string sqlstr)
    //{      
    //    cmd.CommandText = sqlstr;
    //    cmd.CommandType = CommandType.StoredProcedure;
    //     Connection();
    //    cmd.Parameters.AddWithValue("@UserID", _id);
    //    cmd.Parameters.AddWithValue("@Password", _Password);
    //    da = new SqlDataAdapter(cmd);
    //   ds = new DataSet();
    //    da.Fill(ds);
    //    return ds;


    //}


    //public DataSet UpdateData(string sqlstr)
    //{
               
    //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Googleconnectionstring"].ToString());
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.Connection = con;
    //    cmd.CommandText = sqlstr;
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    cmd.Parameters.AddWithValue("@City", _city);
    //    cmd.Parameters.AddWithValue("@mediname", _MedicineName);
    //    cmd.Parameters.AddWithValue("@Dosage", _Dosage);
    //    cmd.Parameters.Add("@MedicineName", SqlDbType.VarChar).Direction = ParameterDirection.Output;
    //    cmd.Parameters["@MedicineName"].Size = 100;
    //    //cmd.Parameters.Add("@Area", SqlDbType.VarChar).Direction = ParameterDirection.Output;
    //    //cmd.Parameters["@Area"].Size = 100;
    //    cmd.Parameters.Add("@OrgName", SqlDbType.VarChar).Direction = ParameterDirection.Output;
    //    cmd.Parameters["@OrgName"].Size = 100;
    //    cmd.Parameters.Add("@Adress", SqlDbType.VarChar).Direction = ParameterDirection.Output;
    //    cmd.Parameters["@Adress"].Size = 200;
    //    cmd.Parameters.Add("@ContactPhones", SqlDbType.VarChar).Direction = ParameterDirection.Output;
    //    cmd.Parameters["@ContactPhones"].Size = 100;
    //    cmd.Parameters.Add("@Stock", SqlDbType.Int).Direction = ParameterDirection.Output;
        


    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    return ds;


    //}

   
    public DataSet BloodBankSearch(string sqlstr,string BGroup,string City)
    {

        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@BGroup", BGroup);
        cmd.Parameters.AddWithValue("@City", City);
        
       
         da = new SqlDataAdapter(cmd);
         ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    public void InsertIntoBloodBanks(string sqlstr,string BGroup,string UserID,string BankName,int Stock)
    {

        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@BGroup", BGroup);
        cmd.Parameters.AddWithValue("@Stock", Stock);
        cmd.Parameters.AddWithValue("@UserID", UserID);
        cmd.Parameters.AddWithValue("@BankName", BankName);
        con.Open(); 
        cmd.ExecuteNonQuery(); 
        con.Close();
        //ds = new DataSet();
        //da = new SqlDataAdapter(cmd);
        ////cb=new SqlCommandBuilder( da = new SqlDataAdapter(cmd));
        //// da.Update(ds);
        //da.Fill(ds);
       

    }
   
    public DataSet SelectData(string sqlstr,string UserID)
    {

        
        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserID", UserID);

        da = new SqlDataAdapter(cmd);
         ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    public DataSet SelectData(string sqlstr)
    {


        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        return ds;

    }
   
    public DataSet GetUserInfo(string sqlstr,string UserId)
    {
        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserId", UserId);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void InsertIntoLogsTable(string sqlstr, string UserID)
    {
        Connection(); cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserID", UserID);
        con.Open();
      cmd.ExecuteNonQuery();
        //da = new SqlDataAdapter(cmd);
        //cb = new SqlCommandBuilder(da);
        
    }

    public void InsertIntoMedicines(string sqlstr, string Medicinename, string Dosage, int Stock,string UserID)
    {
        Connection(); cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@MedicineName", Medicinename);
        cmd.Parameters.AddWithValue("@Dosage", Dosage);
        cmd.Parameters.AddWithValue("@Stock", Stock);
        cmd.Parameters.AddWithValue("@UserID", UserID);
        con.Open();
        cmd.ExecuteNonQuery();

    }
    
    public DataSet UserValidation(string sqlstr, string UserId, string Password)
    {
        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserID", UserId);
        cmd.Parameters.AddWithValue("@Password", Password);

        ds = new DataSet();
        da = new SqlDataAdapter(cmd);
        
        da.Fill(ds);
        return ds;

    }

    public DataSet UpdateMedicines(string sqlstr, string MedicineName, string Dosage, int Stock, string UserID,int ID)
    {
        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@MedicineName", MedicineName);
        cmd.Parameters.AddWithValue("@Dosage", Dosage);
        cmd.Parameters.AddWithValue("@Stock", Stock);
        cmd.Parameters.AddWithValue("@UserID", UserID);
        cmd.Parameters.AddWithValue("@Sno", ID);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
       //return SelectData(sqlstr);
        //ds = new DataSet();
        //da = new SqlDataAdapter(cmd);
        //da.Fill(ds);

    }

    public DataSet UpdateBloodBanks(string sqlstr, string BGroup, int Stock, string UserID,int ID)
    {
        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Group", BGroup);
        cmd.Parameters.AddWithValue("@Stock", Stock);
        cmd.Parameters.AddWithValue("@UserID", UserID);
        cmd.Parameters.AddWithValue("@Sno", ID);
        con.Open(); cmd.ExecuteNonQuery(); con.Close();
        ds = new DataSet();
        da = new SqlDataAdapter(cmd);
       //cb=new SqlCommandBuilder( da = new SqlDataAdapter(cmd));
       // da.Update(ds);
        da.Fill(ds);
        return ds;
    }

    public DataSet MedicineSearch(string sqlstr, string MedicineName, string City, string Dosage)
    {
        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;


        cmd.Parameters.AddWithValue("@City",City);
        cmd.Parameters.AddWithValue("@mediname",MedicineName);
        cmd.Parameters.AddWithValue("@Dosage", Dosage);

        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public DataSet UpdateContactInfo(string sqlstr, string UserID, string ContactPhones)
    {
        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;


        cmd.Parameters.AddWithValue("@UserID",UserID);
        cmd.Parameters.AddWithValue("@ContactPhones",ContactPhones);
        
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    public void CreateNewUser(string sqlstr, string UserID, string Password, string OrgName, string Area, string Address, string City, string ContactPhones, string SQuestion, string Answer)
    {

        Connection(); 
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserID", UserID);
        cmd.Parameters.AddWithValue("@Password", Password);
        cmd.Parameters.AddWithValue("@OrgName", OrgName);
        cmd.Parameters.AddWithValue("@Area", Area);
        cmd.Parameters.AddWithValue("@Adress", Address);
        cmd.Parameters.AddWithValue("@City", City);
        cmd.Parameters.AddWithValue("@ContactPhones", ContactPhones);
        cmd.Parameters.AddWithValue("@SQuestion", SQuestion);
        cmd.Parameters.AddWithValue("@Answer", Answer);
        
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void InsertIntoQueries(string sqlstr,string UserID, string UserMessage)
    {
        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserQuery", UserMessage);
        cmd.Parameters.AddWithValue("@UserID", UserID);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        //ds = new DataSet(); da = new SqlDataAdapter(cmd);
        //da.Fill(ds);
        //return ds;

    }
    public DataSet SelectFromQueries(string sqlstr)
    {
        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;

        ds = new DataSet(); da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    public void ReplyQueries(string sqlstr, string UserID, string ReplyText,string QueryID)
    {

        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserID",UserID);
        cmd.Parameters.AddWithValue("@Reply", ReplyText);
        cmd.Parameters.AddWithValue("@QueryID", QueryID);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }


    public DataSet SelectReplyQueries(string sqlstr, string UserID)
    {
        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserID", UserID);
        
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteSelectedQueries(string sqlstr,string UserID,string QueryID)
    {

        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserID", UserID);
        cmd.Parameters.AddWithValue("@QueryID", QueryID);
        
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
    public DataSet ShowAllReadQueris(string sqlstr)
    {

        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteAllReadQueries(string sqlstr)
    {


        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }


    public void DeleteFromtblBloodBanks(string sqlstr,string UserID,int ID)
    {
        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserID", UserID);
        cmd.Parameters.AddWithValue("@Sno", ID);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
      
    }
    public void DeleteFromtblMedicines(string sqlstr, string UserID,int ID)
    {
        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserID", UserID);
        cmd.Parameters.AddWithValue("@Sno", ID);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
    public bool CheckUser(string sqlstr, string UserID)
    {
        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserID", UserID);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            return true;
        }
        else
            return false;

    }
    public string GivePassword(string sqlstr, string UserID, string SQuestion, string Answer)
    {
        string Password="";
        try
        {

            Connection();
            cmd.CommandText = sqlstr;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserID", UserID);
            cmd.Parameters.AddWithValue("@SQuestion", SQuestion);
            cmd.Parameters.AddWithValue("@Answer", Answer);
            con.Open();
            Password = cmd.ExecuteScalar().ToString();

            con.Close();
            return Password;
        }
        catch (Exception ex)
        {

            return Password;
        }
        finally
        {
            con.Close();
        }
        
    }


    public int UpdateUserInfo(string sqlstr,string UserID, string OrgName, string Area,string Address,string City,string ContactPhone)
    {
        Connection();
        cmd.CommandText = sqlstr;
        cmd.CommandType = CommandType.StoredProcedure;


        cmd.Parameters.AddWithValue("@UserID", UserID);
        cmd.Parameters.AddWithValue("@OrgName", OrgName);
        cmd.Parameters.AddWithValue("@Area", Area);
        cmd.Parameters.AddWithValue("@Address", Address);
        cmd.Parameters.AddWithValue("@City", City);
        cmd.Parameters.AddWithValue("@ContactPhones", ContactPhone);

        con.Open();
        return cmd.ExecuteNonQuery();
  
    }
}


