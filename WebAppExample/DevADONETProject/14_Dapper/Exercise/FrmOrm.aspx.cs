using Dapper;
using System;
using System.Data.SqlClient;
using System.Linq;

namespace DevADONETProject._14_Dapper
{
    /// <summary>
    /// 모델 클래스
    /// </summary>
    public class WareHouse
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public string Description { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string Coordinate { get; set; }
    }

    public partial class FrmOrm : System.Web.UI.Page
    {
        SqlConnection conn;
        public FrmOrm()
        {
            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;
                    AttachDBFilename=|DataDirectory|DebOrm.mdf;
                    Initial Catalog=DebOrm;
                    Integrated Security=True");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowWareHouse();
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            WareHouse model = new WareHouse();
            model.Name = this.txb_Name.Text;
            model.Description = this.txb_Description.Text;
            model.Address = this.txb_Address.Text;
            model.Phone = this.txb_Phone.Text;
            model.Coordinate = String.Empty;

            AddWareHouse(model);
            ShowWareHouse();
        }
        protected void ShowWareHouse()
        {
            conn.Open();

                string sql = @"SELECT ID, NAME, DESCRIPTION, ADDRESS, PHONE, COORDINATE FROM [Table] ORDER BY ID DESC";
                var list = conn.Query<WareHouse>(sql).ToList();

            this.grv_list.DataSource = list;
            this.grv_list.DataBind();

            conn.Close();
        }
        protected void AddWareHouse(WareHouse model)
        {
                conn.Open();
                string sql = @"INSERT INTO [Table] (NAME, DESCRIPTION, ADDRESS, PHONE, COORDINATE)
                                            VALUES (@NAME, @DESCRIPTION, @ADDRESS, @PHONE, @Coordinate)";

                conn.Execute(sql, model);
                conn.Close();
      
        }
    }
}