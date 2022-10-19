using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            SqlCommand sqlcomm = new SqlCommand("select * from [dbo].[Login] where Taikhoan = @Taikhoan and Matkhau = @Matkhau", sqlconn);
            sqlcomm.Parameters.AddWithValue("Taikhoan",TxtUsername.Text);
            sqlcomm.Parameters.AddWithValue("Matkhau", TxtPassword.Text);
            SqlDataAdapter sda=new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable(); 
            sda.Fill(dt);
            sqlconn.Open();
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
            if(dt.Rows.Count > 0)
            {
                Session["id"] = TxtUsername.Text;
                Response.Redirect("Welcome.aspx");
                Session.RemoveAll();
            }
            else
            {
                LitMsg.Text = "Sai tên đăng nhập hoặc Mật khẩu. Đề nghị nhập lại.";
            }
        }
    }
}