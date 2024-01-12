using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication24
{
    public partial class notes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitNotes_Click(object sender, EventArgs e)
        {
            string patientname = patientName.Value;
            string patientnotes = patientNotes.Value;

            InsertPatientNotes(patientname, patientnotes);

        }

        private void InsertPatientNotes(string patientname, string patientnotes)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\ADMIN\\source\\repos\\WebApplication24\\App_Data\\Database1.mdf;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "INSERT INTO PatientNotes (PatientName, Notes) VALUES (@PatientName, @Notes)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@PatientName", patientname);
                    command.Parameters.AddWithValue("@Notes", patientnotes);

                    command.ExecuteNonQuery();
                }
            }
        }
    }

}