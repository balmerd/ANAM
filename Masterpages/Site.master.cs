using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using ANAM;

namespace ANAM.Web
{
	public partial class SiteMaster : BaseMasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			litYear.Text = DateTime.Today.Year.ToString();
			//siteMapDS.SiteMapProvider = "GallerySiteMap";
		}
	}
}