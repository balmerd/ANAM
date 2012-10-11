using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml;
using System.Xml.Linq;
using System.Xml.XPath;
using System.Xml.Xsl;
	
namespace ANAM.Web
{
	public partial class InMemory : BasePage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string key = Request.QueryString["id"];
			string initial = Request.QueryString["ch"];
			var db = new MemorialDataContext();
			if (!string.IsNullOrEmpty(key)) {
				memHeader.Visible = false;
				memCaption.Visible = false;
				rptMemorialPerson.DataSource = from m in db.ANAM_Memorials where m.Id == int.Parse(key) select m;
				rptMemorialPerson.DataBind();
				rptMemorialPerson.Visible = true;
				litSpacer.Text = makeSpacer(1, 36);
			} else if (!string.IsNullOrEmpty(initial)) {
				dlMemorial.DataSource = from m in db.ANAM_Memorials where m.LastName.StartsWith(initial) orderby m.LastName select m;
				dlMemorial.DataBind();
				dlMemorial.Visible = true;
				litSpacer.Text = makeSpacer(dlMemorial.Items.Count, 30);
			} else {
				litSpacer.Text = makeSpacer(0, 30);
			}
		}

		public string makeMemorialLink(Object o)
		{
			var m = o as ANAM_Memorial;
			string fullName = String.Format("{0}, {1} {2} {3}", m.LastName, m.FirstName, m.Rank, m.Status);
			if (!string.IsNullOrEmpty(m.Link)) {
				return String.Format("<a href=\"{0}\" target=\"_blank\">{1}</a>", m.Link, fullName);
			} else if (!string.IsNullOrEmpty(m.Details)) {
				return String.Format("<a href=\"InMemory.aspx?id={0}\">{1}</a>", m.Id, fullName);
			} else {
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