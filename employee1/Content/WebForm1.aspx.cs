using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;

namespace employee1.Content
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
                protected void Btnsubmit_Click(object sender, EventArgs e)
        {

            string connectionString = "Data Source=DESKTOP-7OIAFLS;Initial Catalog=test;Integrated Security=True;";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("insertall", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@empid", TextBoxempid.Text);
            cmd.Parameters.AddWithValue("@firstname", TextBoxfname.Text);
            cmd.Parameters.AddWithValue("@lastname", TextBoxlname.Text);
            cmd.Parameters.AddWithValue("@gender", ddlgender.SelectedValue);
            con.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

            }
            con.Close();
        }

    }
}