using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Text;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using ANAM;

namespace ANAM.Web.UI
{
	public partial class Errors_SystemError : BasePage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			try
			{
				// At this point we have information about the error
				HttpContext ctx = HttpContext.Current;
				Exception exception = ctx.Server.GetLastError();

				litURL.Text = ctx.Request.Url.ToString();
				litSource.Text = exception.Source;
				litMessage.Text = exception.Message;
				txtStackTrace.Text = exception.StackTrace;
				if (exception.InnerException != null) {
					litInnerSource.Text = exception.InnerException.Source;
					litInnerMessage.Text = exception.InnerException.Message;
					txtInnerStackTrace.Text = exception.InnerException.StackTrace;
				}

				try
				{
					StringBuilder sb = new StringBuilder();
					sb.AppendFormat("<h2>Url:</h2><p>{0}</p>", ctx.Request.Url);
					sb.AppendFormat("<h2>Source:</h2><p>{0}</p>", exception.Source);
					sb.AppendFormat("<h2>Message:</h2><p>{0}</p>", exception.Message);
					sb.AppendFormat("<h2>StackTrace:</h2><p>{0}</p>", exception.StackTrace);
					if (exception.InnerException != null) {
						sb.AppendFormat("<h2>InnerException.Source:</h2><p>{0}</p>", exception.InnerException.Source);
						sb.AppendFormat("<h2>InnerException.Message:</h2><p>{0}</p>", exception.InnerException.Message);
						sb.AppendFormat("<h2>InnerException.StackTrace:</h2><p>{0}</p>", exception.InnerException.StackTrace);
					}
					MailUtil.SendErrorEmail("david.b.balmer@gmail.com", sb);
				}
				catch (Exception)
				{
					//ignore
				}
				// --------------------------------------------------
				// To let the page finish running we clear the error
				// --------------------------------------------------
				ctx.Server.ClearError();
			} 
			catch (Exception) 
			{
				// ignore
			}
		}
	}
}