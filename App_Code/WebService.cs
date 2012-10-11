﻿using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Web.Script.Services; 

/// <summary></summary>
/// Summary description for WebService
/// 
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[ScriptService]
public class WebService : System.Web.Services.WebService { 

    public WebService () { 
        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    } 

    [WebMethod]
    public string HelloWorld(string echoField) {
        return echoField;
    }
    
} 
