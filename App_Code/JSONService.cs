using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using Newtonsoft.Json;

/// <summary>
/// Summary description for JSONService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// returns "Content-Type: application/json; charset=utf-8;"
[System.Web.Script.Services.ScriptService]
public class JSONService : System.Web.Services.WebService {

    #region Customer Class
    private class Customer
    {
        public string Name { get; set; }
        public string LastName { get; set; }
        public int Age { get; set; }
        // whatever more customer fields here...
    }
    #endregion


    public JSONService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
	//[ScriptMethod(ResponseFormat = ResponseFormat.Json)] <-- makes no difference, always returns "Content-Type: application/json; charset=utf-8;" when [ScriptService] attribute on the class
	public string HelloWorld() {
        //return "hello: 'dave'";
		// o.responseText = "{"d":"hello: \u0027dave\u0027"}"
        //return "hello: \"dave\"";
		// o.responseText = "{"d":"hello: \"dave\""}"

		Customer customer = new Customer();
		customer.Name = "Lennie";
		customer.LastName = "De Villiers";
		customer.Age = 26;

		string jsonResult = JavaScriptConvert.SerializeObject(customer);
		// "{"d":"{\"Name\":\"Lennie\",\"LastName\":\"De Villiers\",\"Age\":26}"}"
		return jsonResult;
    }
    
}

