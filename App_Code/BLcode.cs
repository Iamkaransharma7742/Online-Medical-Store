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

/// <summary>
/// Summary description for BLcode
/// </summary>
public class BLcode
{
    DataSet ds;
    string _City, _MedicineName, _Dosage, _BGroup, _UserID, _Password, _BankName, _OrgName, _Area, _Address, _ContactPhones, _UserMessage, _ReplyText, _QueryID, _Squestion, _Answer;

    public string Answer
    {
        get { return _Answer; }
        set { _Answer = value; }
    }

    public string Squestion
    {
        get { return _Squestion; }
        set { _Squestion = value; }
    }
    int _ID;

    public int ID
    {
        get { return _ID; }
        set { _ID = value; }
    }
    public string QueryID
    {
        get { return _QueryID; }
        set { _QueryID = value; }
    }

    public string ReplyText
    {
        get { return _ReplyText; }
        set { _ReplyText = value; }
    }

    public string UserMessage
    {
        get { return _UserMessage; }
        set { _UserMessage = value; }
    }

    public string ContactPhones
    {
        get { return _ContactPhones; }
        set { _ContactPhones = value; }
    }

    public string Address
    {
        get { return _Address; }
        set { _Address = value; }
    }

    public string Area
    {
        get { return _Area; }
        set { _Area = value; }
    }

    public string OrgName
    {
        get { return _OrgName; }
        set { _OrgName = value; }
    }

    public string BankName
    {
        get { return _BankName; }
        set { _BankName = value; }
    }

    int _Stock;

    public string BGroup
    {
        get { return _BGroup; }
        set { _BGroup = value; }
    }

    public int Stock
    {
        get { return _Stock; }
        set { _Stock = value; }
    }

    public string UserID
    {
        get { return _UserID; }
        set { _UserID = value; }
    }

    public string Password
    {
        get { return _Password; }
        set { _Password = value; }
    }

    public string Dosage
    {
        get { return _Dosage; }
        set { _Dosage = value; }
    }

    public string MedicineName
    {
        get { return _MedicineName; }
        set { _MedicineName = value; }
    }

    public string City
    {
        get { return _City; }
        set { _City = value; }
    }

    public BLcode()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    DLCode d = new DLCode();


    public bool CallUserValidation()
    {
        DLCode d = new DLCode();
        ds = d.UserValidation("tblUsers_Valid", _UserID, _Password);
        if (ds.Tables[0].Rows.Count > 0)
            return true;
        else
            return false;


    }
    public DataSet CallUserInfo()
    {


        ds = d.GetUserInfo("Select_From_tblUserDetails", _UserID);
        return ds;

    }
    public void CallInsertIntoLogsTable()
    {
        d.InsertIntoLogsTable("Insert_Into_tblLogs", _UserID);

    }
    public void CallInsertIntoMedicineTable()
    {
        d.InsertIntoMedicines("Insert_Into_tblMedicines", _MedicineName, _Dosage, _Stock, _UserID);
    }
    public DataSet CallSelectData()
    {

        return d.SelectData("Select_Procedure_UserID_Based", _UserID);

    }
    public DataSet CallUpdateMedicines()
    {

        return d.UpdateMedicines("Update_tblMedicines", _MedicineName, _Dosage, _Stock, _UserID,_ID);
    }

    public DataSet CallUpdateBloodBanks()
    {
        return d.UpdateBloodBanks("UpDate_tblBloodBanks", _BGroup, _Stock, _UserID,_ID);

    }

    public void CallInsertIntoBloodBanks()
    {

        d.InsertIntoBloodBanks("Insert_tblBloodBanks", _BGroup, _UserID, _BankName, _Stock);
    }
    public DataSet CallMedicineSearch()
    {
        

        return d.MedicineSearch("select_Joins_TU_TM_TUD_Google_test", _MedicineName, _City, _Dosage);
    }
    public DataSet CallBloodBankSearch()
    {
        
        return d.BloodBankSearch("Get_BlooedBankSearch", _BGroup, _City);
    }
    public void CallCreateNewUser()
    {
        d.CreateNewUser("Insert_IntoUserDetails", _UserID, _Password, _OrgName, _Area, _Address, _City, _ContactPhones,_Squestion,_Answer);
    }
    public void CallInsrtIntoQueries()
    {
         d.InsertIntoQueries("Insert_Into_Query", _UserID,_UserMessage);
    }
    public DataSet CallSelectQueries()
    {
        return d.SelectFromQueries("Select__From_Queries");
    }
    public void CallReplyQueries()
    {
        d.ReplyQueries("Reply_Queries", _UserID, _ReplyText,_QueryID);
    }
    public DataSet CallSelectReplyQueries()
    {
        return d.SelectReplyQueries("Select_Reply_Queries", _UserID);
    }
    public DataSet CallSelectAllReadQueries()
    {
        return d.ShowAllReadQueris("Show_AllReadQueries");
    }
    public void CallDeleteAllReadQueries()
    {
        d.DeleteAllReadQueries("Delete_All_Read_Queries");
    }
    public void CallDeleteSelectedQueries()
    {
        d.DeleteSelectedQueries("Delete_Selected_Queries", _UserID, _QueryID);
    }
    public void CallDeleteFromtblBloodBanks()
    {
        d.DeleteFromtblBloodBanks("Delete_From_tblBloodBanks",_UserID,_ID);
    }
    public void CallDeleteFromtblMedicines()
    {
        d.DeleteFromtblMedicines("Delete_From_tblMedicines", _UserID,_ID);
    }
    public bool CallCheckUser()
    {
        DLCode d = new DLCode();
      return d.CheckUser("Check_User", _UserID);
        

    }
    public string CallGivePassword()
    {
        return d.GivePassword("GivePassword", _UserID, _Squestion, _Answer);
    }
    public string CallUpdateUserInfo()
    {
        int i= d.UpdateUserInfo("Update_ContactInfo", _UserID, _OrgName, _Area, _Address, _City, _ContactPhones);
        if (i > 0)
        {
            return "updated successfully";
        }
        else
            return "values were not updated";
    }
    
}
