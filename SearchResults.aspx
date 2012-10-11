<%@ Page Language="C#" MasterPageFile="~/Masterpages/Search.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Search Results" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<!-- Google CSE Search Box Begins -->
	<form action="/SearchResults.aspx" id="cse-search-box">
		<div>
			<input type="hidden" name="cx" value="003856163600660236565:xupxhnsxneu" />
			<input type="hidden" name="cof" value="FORID:10" />
			<input type="hidden" name="ie" value="UTF-8" />
			<input type="text" name="q" size="51" />
			<input type="submit" id="sa" name="sa" value="Search" style="display:none;" />
		</div>
	</form>
	<!-- Google CSE Search Box Ends -->
	<h1 style="margin-top:1em;">Search Results</h1>
	<!-- Google Search Result Snippet Begins -->
	<div id="cse-search-results"></div>
	<script type="text/javascript">
	  var googleSearchIframeName = "cse-search-results";
	  var googleSearchFormName = "cse-search-box";
	  var googleSearchFrameWidth = 600;
	  var googleSearchDomain = "www.google.com";
	  var googleSearchPath = "/cse";
	</script>
	<script type="text/javascript" src="/scripts/show_afs_search.js"></script>
	<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&amp;lang=en"></script>
	<!--script type="text/javascript" src="http://www.google.com/afsonline/show_afs_search.js"></script-->
	<!-- Google Search Result Snippet Ends -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<script type="text/javascript">
		YAHOO.util.Event.onAvailable("sa", function() {
			var oButton = new YAHOO.widget.Button ("sa", { label: "Search" });
		});
	</script>
</asp:Content>
