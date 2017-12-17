using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class AddEmployee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = false;
        Calendar2.Visible = false;

        SqlConnection conn = new SqlConnection("Data Source=ADMIN-PC;Initial Catalog=Digitek_Software ; Integrated Security=true");
        SqlCommand insert = new SqlCommand("insert into EmployeeDetails(EmpName,EmpID,Username,Password,Address,DOB,MobileNo,ResNo,EmailID,DOJ,BG,EmpType) values (@EmpName,@EmpID,@Username,@Password,@Address,@DOB,@MobileNo,@ResNo,@EmailID,@DOJ,@BG,@EmpType)", conn);
        insert.Parameters.AddWithValue("@EmpName", TxtEName.Text);
        insert.Parameters.AddWithValue("@EmpID", TxtEID.Text);
        insert.Parameters.AddWithValue("@Username", TxtEUser.Text);
        insert.Parameters.AddWithValue("@Password", TxtEPass.Text);
        insert.Parameters.AddWithValue("@Address", TxtEAdd.Text);
        insert.Parameters.AddWithValue("@DOB", TxtEDoB.Text);
        insert.Parameters.AddWithValue("@MobileNo", TxtEMob.Text);
        insert.Parameters.AddWithValue("@ResNo", TextBox7.Text);
        insert.Parameters.AddWithValue("@EmailID", TxtEEmail.Text);
        insert.Parameters.AddWithValue("@DOJ", TxtEDoJ.Text);
        insert.Parameters.AddWithValue("@BG", TextBox11.Text);
        insert.Parameters.AddWithValue("@EmpType", RadioButtonList1.Text);
      
        try
        {
            conn.Open();
            insert.ExecuteNonQuery();
            Label3.Text = "Data saved Successfully";
            if (Page.IsValid)
                Response.Redirect("Homepage.aspx");
        }
        catch
        {
            Label3.Text = "Data not Saved"; 
        }
        finally
        {
            conn.Close();
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar2.Visible == false)
            Calendar2.Visible = true;
        else
            Calendar2.Visible = false;

        if (Calendar1.Visible == true)
            Calendar1.Visible = false;
        Calendar2.Attributes.Add("style", "POSITION: absolute");
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TxtEDoB.Text = Calendar2.SelectedDate.ToShortDateString();
        Calendar2.Visible = false;

        
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible == false)
            Calendar1.Visible = true;
        else
            Calendar1.Visible = false;

        if (Calendar2.Visible == true)
            Calendar2.Visible = false;
        Calendar1.Attributes.Add("style", "POSITION: absolute");
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TxtEDoJ.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;

        
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        TxtEAdd.Text = "";
        TxtEName.Text = "";
        TxtEID.Text = "";
        TxtEUser.Text = "";
        TxtEPass.Text = "";
        TxtEDoB.Text = "";
        TxtEDoJ.Text = "";
        TxtEEmail.Text = "";
        TxtEMob.Text = "";
        TextBox7.Text = "";
        TextBox11.Text = "";
    }
}