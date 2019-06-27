using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace caslab12thapril
{
    public partial class Rawmaterial : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["MyDbCon"].ConnectionString;
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            txtbatch.Text = "CAS"+ DateTime.Now.ToString("HHmmddMMyyyy");
            Rawmaterialcode();
            if(!Page.IsPostBack)
            {
                //GridView1.DataBind();
                showData();
            }
        }

        private void Rawmaterialcode()
        {

            string code = "RAW-MAT-00";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select count(Rawmaterialcode) from Rawmaterial1", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            txtcode.Text = code + i.ToString();
        }

       

       

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
        protected void showData()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter adapt = new SqlDataAdapter("select RawmaterialCode, RawmaterialName, RawmaterialType, Quantity, Document, BatchNumber from Rawmaterial1", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();


            //SqlCommand cmd = new SqlCommand("SELECT RawmaterialCode, RawmaterialName, RawmaterialType, Quantity, Document, BatchNumber FROM Rawmaterial1");
            //GridView1.DataSource = this.ExecuteQuery(cmd, "SELECT");
            //GridView1.DataBind();

        }


        private DataTable ExecuteQuery(SqlCommand cmd, string action)
        {
            string str = ConfigurationManager.ConnectionStrings["MyDbCon"].ConnectionString;

            using (SqlConnection con = new SqlConnection(str))
            {
                cmd.Connection = con;
                switch (action)
                {
                    case "SELECT":
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                return dt;
                            }
                        }
                    case "UPDATE":
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        break;
                }
                return null;
            }
        }
        //protected void button1_Click(object sender, EventArgs e)
        //{
        //    SqlConnection con = new SqlConnection(str);
        //    SqlCommand cmd = new SqlCommand("insert into Rawmaterial1(RawmaterialCode,RawmaterialName,RawmaterialType,Quantity,Intermof,SupplierInformation,MinimumQuantity,Document,BatchNumber)values('" + txtcode.Text + "','" + txtname.Text + "','" + typeofmaterial.Text + "','" + quntatity.Text + "','" + termsof.Text + "','" + txtinforamation.Text + "','" + txtmin.Text + "','" + txtdocu.Text + "')",con);
        //    con.Open();
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    GridView1.DataBind();
        //}




        protected void delete_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox c1 = (CheckBox)row.FindControl("CheckBox1");
                if (c1.Checked == true)
                {
                    Label l1 = (Label)row.FindControl("Label1");
                    SqlConnection con = new SqlConnection(str);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("delete from Rawmaterial1 where RawmaterialCode='" + l1.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    showData();
                }
            }
        }

       

        protected void Submit_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("insert into Rawmaterial1(RawmaterialCode,RawmaterialName,RawmaterialType,Quantity,Intermof,SupplierInformation,MinimumQuantity,Document,BatchNumber)values('" + txtcode.Text + "','" + txtname.Text + "','" + typeofmaterial.Text + "','" + quntatity.Text + "','" + termsof.Text + "','" + txtinforamation.Text + "','" + txtmin.Text + "','" + txtdocu.Text + "','"+ txtbatch.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            showData();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    bool isChecked = row.Cells[0].Controls.OfType<CheckBox>().FirstOrDefault().Checked;
                    if (isChecked)
                    {
                        SqlCommand cmd = new SqlCommand("UPDATE Rawmaterial1 SET  RawmaterialName = @RawmaterialName,RawmaterialType=@RawmaterialType,Quantity=@Quantity,Document=@Document,BatchNumber=@BatchNumber WHERE RawmaterialCode = @RawmaterialCode");

                        cmd.Parameters.AddWithValue("@RawmaterialName", row.Cells[1].Controls.OfType<TextBox>().FirstOrDefault().Text);

                        cmd.Parameters.AddWithValue("@RawmaterialType", row.Cells[2].Controls.OfType<DropDownList>().FirstOrDefault().SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Quantity", row.Cells[3].Controls.OfType<TextBox>().FirstOrDefault().Text);

                        cmd.Parameters.AddWithValue("@Document", row.Cells[4].Controls.OfType<TextBox>().FirstOrDefault().Text);

                        cmd.Parameters.AddWithValue("@BatchNumber", row.Cells[5].Controls.OfType<TextBox>().FirstOrDefault().Text);

                        cmd.Parameters.AddWithValue("@RawmaterialCode", GridView1.DataKeys[row.RowIndex].Value);
                        this.ExecuteQuery(cmd, "SELECT");
                    }
                }
            }
            //Button2.Visible = false;
            this.showData();
        }


        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                SqlCommand cmd = new SqlCommand("SELECT DISTINCT(RawmaterialType) FROM Rawmaterial1");
                DropDownList TextBox3 = (e.Row.FindControl("TextBox3") as DropDownList);
                TextBox3.DataSource = this.ExecuteQuery(cmd, "SELECT");
                TextBox3.DataTextField = "RawmaterialType";
                TextBox3.DataValueField = "RawmaterialType";
                TextBox3.DataBind();
                string rawmaterialtype = (e.Row.FindControl("Label3") as Label).Text;
                TextBox3.Items.FindByValue(rawmaterialtype).Selected = true;
            }
        }

        protected void OnCheckedChanged(object sender, EventArgs e)
        {
            bool isUpdateVisible = false;
            CheckBox chk = (sender as CheckBox);
            if (chk.ID == "CheckBox1")
            {
                foreach (GridViewRow row in GridView1.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        row.Cells[0].Controls.OfType<CheckBox>().FirstOrDefault().Checked = chk.Checked;
                    }
                }
            }
            CheckBox CheckBox1 = (GridView1.HeaderRow.FindControl("CheckBox1") as CheckBox);
            CheckBox1.Checked = true;
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    bool isChecked = row.Cells[0].Controls.OfType<CheckBox>().FirstOrDefault().Checked;
                    for (int i = 1; i < row.Cells.Count; i++)
                    {
                        row.Cells[i].Controls.OfType<Label>().FirstOrDefault().Visible = !isChecked;
                        if (row.Cells[i].Controls.OfType<TextBox>().ToList().Count > 0)
                        {
                            row.Cells[i].Controls.OfType<TextBox>().FirstOrDefault().Visible = isChecked;
                        }
                        if (row.Cells[i].Controls.OfType<TextBox>().ToList().Count > 0)
                        {
                            row.Cells[i].Controls.OfType<TextBox>().FirstOrDefault().Visible = isChecked;
                        }

                        if (row.Cells[i].Controls.OfType<DropDownList>().ToList().Count > 0)
                        {
                            row.Cells[i].Controls.OfType<DropDownList>().FirstOrDefault().Visible = isChecked;
                        }
                        if (row.Cells[i].Controls.OfType<TextBox>().ToList().Count > 0)
                        {
                            row.Cells[i].Controls.OfType<TextBox>().FirstOrDefault().Visible = isChecked;
                        }
                        if (row.Cells[i].Controls.OfType<TextBox>().ToList().Count > 0)
                        {
                            row.Cells[i].Controls.OfType<TextBox>().FirstOrDefault().Visible = isChecked;
                        }
                        if (row.Cells[i].Controls.OfType<TextBox>().ToList().Count > 0)
                        {
                            row.Cells[i].Controls.OfType<TextBox>().FirstOrDefault().Visible = isChecked;
                        }
                        if (isChecked && !isUpdateVisible)
                        {
                            isUpdateVisible = true;
                        }
                        if (!isChecked)
                        {
                            CheckBox1.Checked = false;
                        }
                    }
                }
            }
            Button2.Visible = isUpdateVisible;
        }

       

      
    }
}