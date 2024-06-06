using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace TutorManagementSystem.Tutor
{
    public partial class View_Students : System.Web.UI.Page
    {
        readonly string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tutor_username"] == null)
            {
                Response.Redirect("~/Tutor_Login.aspx");
            }

            if (!IsPostBack)
            {
                BindRepeater();
            }
        }

        void BindRepeater(string searchQuery = "")
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "SELECT * FROM student_signup";
            if (!string.IsNullOrEmpty(searchQuery))
            {
                query += " WHERE name LIKE @SearchQuery OR country LIKE @SearchQuery OR city LIKE @SearchQuery";
            }
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            if (!string.IsNullOrEmpty(searchQuery))
            {
                sda.SelectCommand.Parameters.AddWithValue("@SearchQuery", "%" + searchQuery + "%");
            }
            DataTable data = new DataTable();
            sda.Fill(data);
            Repeater1.DataSource = data;
            Repeater1.DataBind();
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string searchQuery = SearchTextBox.Text.Trim();
            BindRepeater(searchQuery);
        }
    }
}
