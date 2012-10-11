using System;
using System.Collections;
using System.Collections.Generic;
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

namespace ANAM.Web.UI
{
	public partial class Errors_NotFound : BasePage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string redirect = String.Empty;
            string path = GetRequestedPath();
			List<PathRedirect> lst = SetupPathRedirects();

			foreach (PathRedirect o in lst) {
				if (path.Contains(o.Path) && !String.IsNullOrEmpty(o.Redirect)) {
					redirect = o.Redirect;
					break;
				}
			}

			if (!String.IsNullOrEmpty(redirect)) {
				Response.Redirect(redirect, true);
			}

			System.Web.HttpContext ctx = System.Web.HttpContext.Current;
			if (ctx != null) { 
				ctx.Response.Status = "404 Not Found"; 
			}

			litRequestedPath.Text = HttpUtility.HtmlEncode(path);
		}

		private string GetRequestedPath() 
		{
			string path = "unknown"; 
			string qstr = HttpUtility.UrlDecode(Request.QueryString.ToString()); 
			if (!string.IsNullOrEmpty(qstr)) { 
				path = Request.QueryString["aspxerrorpath"];	// try to get asp.net error info 
				if (string.IsNullOrEmpty(path)) {				// if none, must be IIS error 
					if (qstr.StartsWith("404")) { 
						int start = qstr.IndexOf(":80"); 
						if (start != -1) { 
							path = qstr.Substring(start + 3); 
						} 
					} 
				} 
			} 
			return path; 
		} 

		private List<PathRedirect> SetupPathRedirects()
		{
			List<PathRedirect> lst = new List<PathRedirect>();
			lst.Add(new PathRedirect("index.asp", "/Default.aspx"));
			lst.Add(new PathRedirect("overview.asp", "/Overview.aspx"));
			lst.Add(new PathRedirect("skipper.asp", "/Skipper.aspx"));
			lst.Add(new PathRedirect("board.asp", "/Board.aspx"));
			lst.Add(new PathRedirect("board-election.asp", "/BoardElection.aspx"));
			lst.Add(new PathRedirect("nas-history.asp", "/History/NAS.aspx"));
			lst.Add(new PathRedirect("nadep-history.asp", "/History/NADEP.aspx"));
			lst.Add(new PathRedirect("map.asp", "/Map.aspx"));
			lst.Add(new PathRedirect("exhibits.asp", "/Exhibits.aspx"));
			lst.Add(new PathRedirect("photos", "/Gallery.aspx"));
			lst.Add(new PathRedirect("in-memory", "/InMemory.aspx"));
			lst.Add(new PathRedirect("squadrons.asp", "/Units.aspx"));
			lst.Add(new PathRedirect("cvwr-30.asp", "/Units/Aircraft/CVWR-30.aspx"));
			lst.Add(new PathRedirect("va-303.asp", "/Units/Aircraft/VA-303.aspx"));
			lst.Add(new PathRedirect("va-304.asp", "/Units/Aircraft/VA-304.aspx"));
			lst.Add(new PathRedirect("va-304-disestablisment.asp", "/Units/Aircraft/VA-304/VA-304-Disestablishment.aspx"));
			lst.Add(new PathRedirect("va-304-navy-times.asp", "/Units/Aircraft/VA-304/VA-304-Navy-Times.aspx"));
			lst.Add(new PathRedirect("va-304-plan.asp", "/Units/Aircraft/VA-304/VA-304-Plan.aspx"));
			lst.Add(new PathRedirect("va-304-provider-v2n7.asp", "/Units/Aircraft/VA-304/VA-304-Provider-V2N7.aspx"));
			lst.Add(new PathRedirect("va-304-provider-v3n6.asp", "/Units/Aircraft/VA-304/VA-304-Provider-V3N6.aspx"));
			lst.Add(new PathRedirect("vak-208.asp", "/Units/Aircraft/VAK-208.aspx"));
			lst.Add(new PathRedirect("vak-308.asp", "/Units/Aircraft/VAK-308.aspx"));
			lst.Add(new PathRedirect("vaq-130.asp", "/Units/Aircraft/VAQ-130.aspx"));
			lst.Add(new PathRedirect("vaq-131.asp", "/Units/Aircraft/VAQ-131.aspx"));
			lst.Add(new PathRedirect("vaq-132.asp", "/Units/Aircraft/VAQ-132.aspx"));
			lst.Add(new PathRedirect("vaq-133.asp", "/Units/Aircraft/VAQ-133.aspx"));
			lst.Add(new PathRedirect("vaq-134.asp", "/Units/Aircraft/VAQ-134.aspx"));
			lst.Add(new PathRedirect("vaq-135.asp", "/Units/Aircraft/VAQ-135.aspx"));
			lst.Add(new PathRedirect("vaw-11.asp", "/Units/Aircraft/VAW-11.aspx"));
			lst.Add(new PathRedirect("vaw-13.asp", "/Units/Aircraft/VAW-13.aspx"));
			lst.Add(new PathRedirect("vma-133.asp", "/Units/Aircraft/VMA-133.aspx"));
			lst.Add(new PathRedirect("vr-55.asp", "/Units/Aircraft/VR-55.aspx"));
			lst.Add(new PathRedirect("vsf-1.asp", "/Units/Aircraft/VSF-1.aspx"));
			lst.Add(new PathRedirect("hm-15.asp", "/Units/Helicopters/HM-15.aspx"));
			lst.Add(new PathRedirect("hm-19.asp", "/Units/Helicopters/HM-19.aspx"));
			lst.Add(new PathRedirect("hm-19-program.asp", "/Units/Helicopters/HM-19/HM-19-PROGRAM.aspx"));
			lst.Add(new PathRedirect("hs-85.asp", "/Units/Helicopters/HS-85.aspx"));
			lst.Add(new PathRedirect("firstpac-1187.asp", "/Units/Intel/FIRSTPAC-1187.aspx"));
			lst.Add(new PathRedirect("service-stories.asp", "/Stories.aspx"));
			lst.Add(new PathRedirect("links.asp", "/Links.aspx"));
			lst.Add(new PathRedirect("kids.asp", "/Kids.aspx"));
			lst.Add(new PathRedirect("partners.asp", "/Partners.aspx"));
			lst.Add(new PathRedirect("search.asp", "/Search.aspx"));
			lst.Add(new PathRedirect("contact.asp", "/Contact.aspx"));
			lst.Add(new PathRedirect("volunteer.asp", "/Volunteer.aspx"));
			lst.Add(new PathRedirect("get-involved.asp", "/GetInvolved.aspx"));
			lst.Add(new PathRedirect("vhp.asp", "/VHP.aspx"));
			//lst.Add(new PathRedirect(".asp", "/.aspx"));
			return lst;
		}

		internal class PathRedirect {
			public string Path = String.Empty;
			public string Redirect = String.Empty;
			public PathRedirect(string path, string redirect) {
				this.Path = path;
				this.Redirect = redirect;
			}
		}
	}
}