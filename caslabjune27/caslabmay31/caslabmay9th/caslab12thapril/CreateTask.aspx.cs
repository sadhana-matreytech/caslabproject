using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace caslab12thapril
{
    public partial class CreateTask : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["MyDbCon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            NewtaskID();
            empid.Text = (string)Session["EmpId"];
            empname.Text = (string)Session["UserName"];
            //string EmpId = (string)Session["EmpId"];
            //SqlDataSource1.SelectParameters["EmpId"].DefaultValue = EmpId;
            id();
            if (!Page.IsPostBack)
            {


                DataBind();

        Projectid.Items.Insert(0, new System.Web.UI.WebControls.ListItem("  Created ProjectID's    ", " "));
                Projectid.AppendDataBoundItems = true;



                String strQuery = "select Id from AddProject3 where EmpId=@EmpId";
        SqlConnection con = new SqlConnection(str);

        SqlCommand cmd = new SqlCommand();
                cmd.Parameters.AddWithValue("@EmpId", empid.Text);
        cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQuery;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    Projectid.DataSource = cmd.ExecuteReader();
                    Projectid.DataTextField = "Id";
                    Projectid.DataValueField = "Id";
                    Projectid.DataBind();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }

            }
        }
    

        //protected void Projectid_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    String strQuery = "select ProjectId from CreateProject where ProjectId = @ProjectId";

        //    SqlConnection con = new SqlConnection(str);
        //    SqlCommand cmd = new SqlCommand();
        //    cmd.Parameters.AddWithValue("@ProjectId", Projectid.SelectedItem.Value);
        //    cmd.CommandType = CommandType.Text;
        //    cmd.CommandText = strQuery;
        //    cmd.Connection = con;
        //    try
        //    {
        //        con.Open();
        //        SqlDataReader sdr = cmd.ExecuteReader();
        //        while (sdr.Read())
        //        {
        //            Projectid.Text = sdr.GetValue(0).ToString();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //    finally
        //    {
        //        con.Close();
        //        con.Dispose();
        //    }
        //}
       
            private void id()
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select count(Id) from AddnewTask2", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            Textbox1.Text = i.ToString();
        }

        private void NewtaskID()
        {

            string code = "TASK-";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select count(Name) from AddnewTask2", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            Taskid.Text = code + i.ToString();
        }
        protected void task_Click(object sender, EventArgs e)
        {
            //string filename = photo.PostedFile.FileName;
            //photo.SaveAs(Server.MapPath("~/UploadedImages/" + filename));
            

            //string filename1 = Path.GetFileName(photo.PostedFile.FileName);
            //string contentType = photo.PostedFile.ContentType;
            //using (Stream fs = photo.PostedFile.InputStream)
            //{
            //    using (BinaryReader br = new BinaryReader(fs))
            //    {
            //        byte[] bytes = br.ReadBytes((Int32)fs.Length);
            //    }
            //}
            SqlConnection con = new SqlConnection(str);
                    SqlCommand cmd = new SqlCommand("insert into AddnewTask2(Id,Name,TaskDescription,Chemical,Quantity,Units,TaskTypeId,EmpId,UserName)values('" + Textbox1.Text + "','" + Taskid.Text + "','" + descrp.Text + "','" + chemicla.Text + "','" + qun.Text + "','" + units.Text + "','" + Projectid.Text + "','" + empid.Text + "','" + empname.Text + "')", con);
                    //cmd.Parameters.AddWithValue("@filename", "UploadedImages\\" + filename);
                    //cmd.Parameters.AddWithValue("@photodata", bytes);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
            
            SqlConnection con1 = new SqlConnection(str);
            SqlCommand command = new SqlCommand("insert into approverdata(TaskId,Status)values('" + Taskid.Text + "',@Status)", con1);
            command.Parameters.AddWithValue("@Status", " ");


            con1.Open();
            command.ExecuteNonQuery();
            con1.Close();
        }
    }
}