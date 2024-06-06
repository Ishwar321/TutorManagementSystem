using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TutorManagementSystem
{
    public partial class Student_Signup : System.Web.UI.Page
    {
        readonly string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ResetControls()
        {
            NameTextBox.Text = "";
            FatherNameTextBox.Text = "";
            SurnameTextBox.Text = "";
            GenderDropDownList.ClearSelection();
            AgeTextBox.Text = "";
            CountryTextBox.Text = "";
            CityTextBox.Text = "";
            AddressTextBox.Text = "";
            ClassTextBox.Text = "";
            GoingToDropDownList.ClearSelection();
            SubjectTextBox.Text = "";
            ContactTextBox.Text = "";
            TuitionTypeDropDownList.ClearSelection();
            TutorPreferDropDownList.ClearSelection();
            UsernameTextBox.Text = "";
            PasswordTextBox.Text = "";
            ConfirmPasswordTextBox.Text = "";
        }
        protected void StudentSignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            try
            {






                string query = "insert into student_signup values(@name, @fname, @surname, @gender, @age, @country, @city, @address, @standard, @goingto, @subject, @contactno, @tuitiontype, @tuitionprefer, @username, @password )";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@fname", FatherNameTextBox.Text);
                cmd.Parameters.AddWithValue("@surname", SurnameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@country", CountryTextBox.Text);
                cmd.Parameters.AddWithValue("@city", CityTextBox.Text);
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@standard", ClassTextBox.Text);
                cmd.Parameters.AddWithValue("@goingto", GoingToDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@subject", SubjectTextBox.Text);
                cmd.Parameters.AddWithValue("@contactno", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@tuitiontype", TuitionTypeDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@tuitionprefer", TutorPreferDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                con.Open();

                int a = cmd.ExecuteNonQuery();

                if (a > 0)
                {
                    //Response.Write("<script>alert('You have Registered Successfully')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: \"Success\",\r\n  text: \"You have Registered Successfully\",\r\n  icon: \"success\"\r\n});", true);

                    ResetControls();
                }

                else
                {
                    //Response.Write("<script>alert('Registered Failed.. Try Another Username')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: \"Failure\",\r\n  text: \"Registered Failed.. Try Another Username\",\r\n  icon: \"error\"\r\n});", true);


                }
            }
            catch (SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: \"Failure\",\r\n  text: \"Registered Failed.. " + UsernameTextBox.Text + " already Exist\",\r\n  icon: \"error\"\r\n});", true);

                }
                else {


                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: \"Failure\",\r\n  text: \"Registered Failed..\",\r\n  icon: \"error\"\r\n});", true);


                }
            }
            finally 
            {
                con.Close();
            }

            
        }
        }
    }