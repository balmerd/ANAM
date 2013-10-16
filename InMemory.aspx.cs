using System;
using System.Configuration;
using System.Data;
using System.Text;
using System.Data.SqlClient;
	
namespace ANAM.Web
{
	public partial class InMemory : BasePage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string key = Request.QueryString["id"];
			string initial = Request.QueryString["ch"];

			DataSet ds = null;
			SqlCommand cmd = null;
			SqlDataAdapter adapt = null;
			var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ANAMConnectionString"].ToString());

			if (!string.IsNullOrEmpty(key)) {
				memHeader.Visible = false;
				memCaption.Visible = false;
				cmd = new SqlCommand(string.Format("SELECT * FROM ANAM_Memorial WHERE Id = {0}", int.Parse(key)), conn);
				adapt = new SqlDataAdapter(cmd);
				ds = new DataSet();
				adapt.Fill(ds);
				rptMemorialPerson.DataSource = ds;
				rptMemorialPerson.DataBind();
				rptMemorialPerson.Visible = true;
				litSpacer.Text = makeSpacer(1, 36);
			} else if (!string.IsNullOrEmpty(initial)) {
				cmd = new SqlCommand(string.Format("SELECT * FROM ANAM_Memorial WHERE LastName LIKE '{0}%' ORDER BY LastName", initial), conn);
				adapt = new SqlDataAdapter(cmd);
				ds = new DataSet();
				adapt.Fill(ds);
				dlMemorial.DataSource = ds;
				dlMemorial.DataBind();
				dlMemorial.Visible = true;
				litSpacer.Text = makeSpacer(dlMemorial.Items.Count, 30);
			} else {
				litSpacer.Text = makeSpacer(0, 30);
			}
		}

		public string makeMemorialLink(Object o)
		{
			var row = o as DataRowView;
			string fullName = String.Format("{0}, {1} {2} {3}", row["LastName"].ToString(), row["FirstName"].ToString(), row["Rank"].ToString(), row["Status"].ToString());
			if (!string.IsNullOrEmpty(row["Link"].ToString()))
			{
				return String.Format("<a href=\"{0}\" target=\"_blank\">{1}</a>", row["Link"].ToString(), fullName);
			}
			else if (!string.IsNullOrEmpty(row["Details"].ToString()))
			{
				return String.Format("<a href=\"InMemory.aspx?id={0}\">{1}</a>", row["Id"].ToString(), fullName);
			}
			else
			{
				return fullName;
			}
		}

		private string makeSpacer(int rowCount, int maxCount)
		{ // stupid hack to prevent IE6 from resizing content after page is rendered
			var sb = new StringBuilder();
			int count = maxCount - rowCount;
			for (int i=0; i<count; i++) {
				sb.Append("<br/> ");
			}
			return sb.ToString();
		}
	}
}