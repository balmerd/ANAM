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
	public partial class InMemoryAdmin : BasePage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack) {
				GridView1.DataBind();
				GridView1.SelectedIndex = 0; // select the first entry
				FormView1.DataBind();
			}
		}

		protected void onGridRowDataBound(object sender, GridViewRowEventArgs e)
		{
		    if (e.Row.RowType == DataControlRowType.DataRow) {
				e.Row.Attributes["onmouseover"] = "doOnRowMouseOver(this);";
				e.Row.Attributes["onmouseout"] = "doOnRowMouseOut(this);";
		        e.Row.Attributes["onclick"] = ClientScript.GetPostBackClientHyperlink(this.GridView1, "Select$" + e.Row.RowIndex);
		    }
		}

		protected void onGridPageIndexChanged(object sender, EventArgs e)
		{
		    GridView1.SelectedIndex = 0;
		}

		protected void onUpdated(object sender, ObjectDataSourceStatusEventArgs e)
		{
			GridView1.DataBind();
		}
	}
}