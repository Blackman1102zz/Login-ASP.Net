using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GVbind();
            }
        }
        protected void GVbind()
        {
            string mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            using (SqlConnection sqlconn = new SqlConnection(mainconn))
            {
                sqlconn.Open();
                SqlCommand sqlcomm = new SqlCommand("select [Taikhoan], [Description], [Phone], [CreatedPerson] " +
                    "from [dbo].[Account], [dbo].[Account_Phone] " +
                    "WHERE [dbo].[Account].[Id] = [dbo].[Account_Phone].[UserId]", sqlconn);
                SqlDataReader dr = sqlcomm.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();

                }
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            SqlCommand sqlcomm = new SqlCommand(@"INSERT INTO [dbo].[Account]
           ([Taikhoan]
           ,[Matkhau]
           ,[Description])
     VALUES
           ('" + txtAcc.Text+"','"+txtPass.Text+"','"+txtDesc.Text+"')", sqlconn);
            
            sqlconn.Open();
            sqlcomm.ExecuteNonQuery();
            Response.Write("Thêm thành công");
            sqlconn.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            SqlCommand sqlcomm = new SqlCommand(@"DELETE FROM [dbo].[Account]
      WHERE [Taikhoan] = '" + txtAcc.Text+"'AND [Matkhau] ='"+txtPass.Text+"'" , sqlconn);
            sqlconn.Open();
            sqlcomm.ExecuteNonQuery();
            Response.Write("Xóa thành công");
            sqlconn.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            SqlCommand sqlcomm = new SqlCommand(@"UPDATE [dbo].[Account]
   SET [Taikhoan] = '" + txtAcc.Text+"' ,[Matkhau] = '"+txtPass.Text+"' ,[Description] = '"+txtDesc.Text+"' ,[Phone] = '"+txtPhone.Text+"' WHERE [Taikhoan] = '"+txtAcc.Text+"' AND [Matkhau] ='"+txtPass.Text+"'", sqlconn);
            sqlconn.Open();
            sqlcomm.ExecuteNonQuery();
            Response.Write("Cập nhật thành công");
            sqlconn.Close();
        }
    }

}