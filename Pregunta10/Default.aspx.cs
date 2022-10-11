using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadRecord();
        }

    }

    SqlConnection con = new SqlConnection("Data Source=DESKTOP-QPRBNQ4;Initial Catalog=MicaelaS;Integrated Security=True");
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("Insert into Personas values('"+ int.Parse(TextBox2.Text) + "','"+TextBox1.Text+"','"+DateTime.Parse(TextBox3.Text)+"','"+int.Parse(TextBox4.Text)+"')", con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Se insertaron datos');", true);
        LoadRecord();
    }
    void LoadRecord(){
        
        SqlCommand comm = new SqlCommand("Select * from Personas",con);
        SqlDataAdapter adapter = new SqlDataAdapter(comm);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("update Personas set ci = '"+int.Parse(TextBox2.Text)+"',nombre= '"+TextBox1.Text+"',fecha= '"+ DateTime.Parse(TextBox3.Text) + "',depto = '"+int.Parse(TextBox4.Text)+"' where ci = '"+int.Parse(TextBox2.Text)+"'",con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Se cambiaron datos');", true);
        LoadRecord();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("Delete Personas where ci = '" + int.Parse(TextBox2.Text) + "'", con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Se eliminaron datos');", true);
        LoadRecord();
    }
}