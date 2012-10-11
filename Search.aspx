<%@ Page Language="C#" MasterPageFile="~/Masterpages/Search.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Search" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>Search</h1>
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
	<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&amp;lang=en"></script>
	<!-- Google CSE Search Box Ends -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<script type="text/javascript">
		YAHOO.util.Event.onAvailable("sa", function() {
			var oButton = new YAHOO.widget.Button ("sa", { label: "Search" });
		});
	</script>
</asp:Content>
