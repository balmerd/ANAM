using System;
using System.Data;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Collections;

namespace ANAM
{
	public class MailUtil
	{
		internal static string EMAIL_DOMAIN = "alamedanavalairmuseum.org";

		internal static string ERROR_SENDER = "errors";

		public static string ObfuscateEmail(string addr)
		{
			return ObfuscateEmail(addr, addr);
		}

		public static string ObfuscateEmail(string addr, string link)
		{
			return String.Format("<a href=\"{0}{1}\">{2}</a>", HtmlEncode("mailto:"), HtmlEncode(addr), link);
		}

		public static void SendErrorEmail(string toEmail, StringBuilder sbEmailBody)
		{
			try {
				ArrayList emailList = new ArrayList();
				emailList.Add(toEmail);
				MailMessage oMail = _setupMessage(_emailAddress(ERROR_SENDER), emailList, "ANAM Error Info");
				oMail.Body = sbEmailBody.ToString();
				_sendMessage(ref oMail);
				oMail = null;
			} catch (Exception) {
				//ignore
			}
		}

		private static MailMessage _setupMessage(string fromEmail, ArrayList emailList, string subject)
		{
			MailMessage oMail = new MailMessage();
			oMail.From = new MailAddress(fromEmail);
			foreach (string toEmail in emailList) {
				oMail.To.Add(toEmail);
			}
			oMail.Subject = subject;
			oMail.IsBodyHtml = true;
			oMail.Priority = MailPriority.High;
			return oMail;
		}

		private static string _emailAddress(string name)
		{
			return String.Format("{0}@{1}", name, EMAIL_DOMAIN);
		}

		private static void _sendMessage(ref MailMessage oMail)
		{
			//SmtpClient oSmtp = new SmtpClient(WebConfigurationManager.AppSettings["SMTP_SERVER"]);
			SmtpClient oSmtp = new SmtpClient();
			oSmtp.Send(oMail);
			oSmtp = null;
		}

		private static string HtmlEncode(string text)
		{ // http://www.eggheadcafe.com/PrintSearchContent.asp?LINKID=1149
		    string repl = ""; 
		    int i = 0, acode = 0; 
		    string tempHTMLEncode = text; 
		    for (i = tempHTMLEncode.Length; i >= 1; i--) { 
		        acode = System.Convert.ToInt32(tempHTMLEncode[i - 1]); 
		        if (acode == 32) { 
		            repl = " "; 
		        } else if (acode == 34) { 
		            repl = "\""; 
		        } else if (acode == 38) { 
		            repl = "&"; 
		        } else if (acode == 60) { 
		            repl = "<"; 
		        } else if (acode == 62) { 
		            repl = ">"; 
		        } else if (acode >= 32 && acode <= 127) { 
		            repl = "&#" + System.Convert.ToString(acode) + ";"; 
		        } else { 
		            repl = "&#" + System.Convert.ToString(acode) + ";"; 
		        } 
		        if (repl.Length > 0) { 
		            tempHTMLEncode = tempHTMLEncode.Substring(0, i - 1) + repl + tempHTMLEncode.Substring(i); 
		            repl = ""; 
		        } 
		    } 
		    return tempHTMLEncode;
		} 
	}
}