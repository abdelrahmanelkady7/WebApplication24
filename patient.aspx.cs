using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication24
{
    public partial class patient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitAppointment(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\ADMIN\\source\\repos\\WebApplication24\\App_Data\\Database1.mdf;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "INSERT INTO Appointments (Date, Time, NumberOfPeople, LastName, FirstName, Email, Phone, Illness, SelectedDoctor, Comments) " +
                               "VALUES (@Date, @Time, @NumberOfPeople, @LastName, @FirstName, @Email, @Phone, @Illness, @SelectedDoctor, @Comments)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Date", date.Value);
                    command.Parameters.AddWithValue("@Time", this.time.Value);
                    command.Parameters.AddWithValue("@NumberOfPeople", Convert.ToInt32(people.Value));
                    command.Parameters.AddWithValue("@LastName", Text1.Value);
                    command.Parameters.AddWithValue("@FirstName", Text2.Value);
                    command.Parameters.AddWithValue("@Email", email.Value);
                    command.Parameters.AddWithValue("@Phone", phone.Value);
                    command.Parameters.AddWithValue("@Illness", illness.Value);
                    command.Parameters.AddWithValue("@SelectedDoctor", doctor.Value);
                    command.Parameters.AddWithValue("@Comments", comments.Value);

                    command.ExecuteNonQuery();
                }
            }



        }
    }
}
 