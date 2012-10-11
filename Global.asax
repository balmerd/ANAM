<%@ Application Language="C#" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.IO.Compression" %>
<%@ Import Namespace="System.Text.RegularExpressions" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        //SiteMap.SiteMapResolve += new SiteMapResolveEventHandler(SiteMap_SiteMapResolve);
    }
	
	//public SiteMapNode SiteMap_SiteMapResolve(Object o, SiteMapResolveEventArgs e)
	//{
	//    // if the current page is not in the sitemap, ignore it
	//    if (SiteMap.CurrentNode == null) return null;
		
	//    SiteMapNode node = SiteMap.CurrentNode.Clone(true);	// make a copy of the SiteMap node
	
	//    //// get the productId from the query string
	//    //string sId = e.Context.Request.QueryString["Id"];
		
	//    //if (!String.IsNullOrEmpty(sId)) {
	//    //    // use business object to retrieve product details
	//    //    // Product prod = ProductCatalog.GetProductById(Convert.ToInt32(sId));
			
	//    //    // if product successfully retrieved, set node title to match product name
	//    //    if (prod != null) {
	//    //        temp.Title = prod.Name;
	//    //    }
	//    //}
		
	//    return node;
	//}
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown
    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs
    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
    }
	
	void Application_BeginRequest(object sender, EventArgs e)
	{ 
		// http://msdn.microsoft.com/en-us/library/ms227673.aspx
		// http://www.stardeveloper.com/articles/display.html?article=2007110401&page=1
		
		HttpApplication app = (HttpApplication)sender;
        HttpContext context = app.Context;
		string filePath = context.Request.FilePath;
        string fileExtension = VirtualPathUtility.GetExtension(filePath);
		
		//if (fileExtension.Equals(".aspx")) {
		//    context.Response.Write("<h1><font color=red>" + "Beginning of Request" + "</font></h1><hr>");
		//}	

		if (!fileExtension.Equals(".axd"))
		{ 
			// prevent "WebForm_DoPostBackWithOptions is not defined" by not compressing .axd files

			Stream prevUncompressedStream = app.Response.Filter;
			string acceptEncoding = app.Request.Headers["Accept-Encoding"];
			//Regex cacheable = new Regex("js|css|gif|jpg|png", RegexOptions.IgnoreCase);
			
			//if (cacheable.IsMatch(fileExtension)) {
			//    context.Response.Cache.SetExpires(DateTime.Now.AddDays(60));
			//    context.Response.Cache.SetCacheability(HttpCacheability.Public);
			//    context.Response.Cache.SetValidUntilExpires(false);
			//}
			
			if (acceptEncoding == null || acceptEncoding.Length == 0) {
				return;
			} else {
				acceptEncoding = acceptEncoding.ToLower();
			}

			if (acceptEncoding.Contains("gzip")) {
				app.Response.Filter = new GZipStream(prevUncompressedStream, CompressionMode.Compress);
				app.Response.AppendHeader("Content-Encoding", "gzip");
			} else if (acceptEncoding.Contains("deflate")) {
				app.Response.Filter = new DeflateStream(prevUncompressedStream, CompressionMode.Compress);
				app.Response.AppendHeader("Content-Encoding", "deflate");
			}
		}
	}
       
</script>
