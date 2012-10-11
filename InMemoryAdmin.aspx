<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" AutoEventWireup="true" ValidateRequest="false" EnableEventValidation="false" 
	CodeFile="InMemoryAdmin.aspx.cs" Inherits="ANAM.Web.InMemoryAdmin" Title="Alameda Naval Air Museum - Admin - InMemory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
    <script language="javascript" type="text/javascript">
		function doOnRowMouseOver(o) {
			with (o.style) {
				cursor = 'pointer';
				textDecoration = 'none';
				backgroundColor = '#B5F7E4';
			}
		}
		function doOnRowMouseOut(o) {
			with (o.style) {
				textDecoration = 'none';
				backgroundColor = '#FFFFFF';
			}
		}
    </script>
    <style type="text/css">
		td {
			border-color: #ddd;
		}
		.grid-row td {
			padding: 2px 4px;
		}
		.grid-row td a {
			outline-style: none;
		}
		.grid-column-centered {
			text-align: center;
		}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	
	<asp:LinqDataSource ID="LinqDataSource1" runat="server" TableName="ANAM_Memorials" ContextTypeName="MemorialDataContext">
	</asp:LinqDataSource>

	<asp:LinqDataSource ID="LinqDataSource2" runat="server" TableName="ANAM_Memorials" ContextTypeName="MemorialDataContext" 
		EnableInsert="True" EnableUpdate="True" AutoGenerateWhereClause="True">
		<WhereParameters>
			<asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedDataKey.Values[0]" />
		</WhereParameters>
	</asp:LinqDataSource>
	
	<div style="padding:0.25em;">
		<asp:UpdatePanel ID="UpdatePanel1" runat="server">
			<ContentTemplate>
				<asp:GridView ID="GridView1" runat="server" Width="100%" DataSourceID="LinqDataSource1" AutoGenerateColumns="false" DataKeyNames="Id" 
					GridLines="Both" AllowPaging="true" PageSize="15" AllowSorting="true" 
					OnRowDataBound="onGridRowDataBound" OnPageIndexChanged="onGridPageIndexChanged">
					<HeaderStyle BackColor="Navy" ForeColor="White" />
					<PagerSettings Mode="NumericFirstLast" />
					<PagerStyle Font-Bold="true" />
					<RowStyle CssClass="grid-row" />
					<Columns>
						<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" ItemStyle-CssClass="grid-column-centered" />
						<asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
						<asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
						<asp:BoundField DataField="Rank" HeaderText="Rank" SortExpression="Rank" />
						<asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
					</Columns>
				</asp:GridView>
			</ContentTemplate>
		</asp:UpdatePanel>
	</div>
	
	<div style="padding:0.25em;">
		<asp:UpdatePanel ID="UpdatePanel2" runat="server">
			<ContentTemplate>
				<asp:FormView ID="FormView1" runat="server" DataSourceID="LinqDataSource2" AllowPaging="false" DataKeyNames="Id" Width="100%">
					<EditItemTemplate>
						<table width="98%">
							<tr>
								<td><b>Id</b></td>
								<td><b>Rank</b></td>
								<td><b>LastName</b></td>
								<td><b>FirstName</b></td>
								<td><b>Status</b></td>
							</tr>
							<tr>
								<td><asp:Label runat="server" Text='<%# Eval("Id") %>' /></td>
								<td><asp:TextBox ID="RankTextBox" runat="server" Text='<%# Bind("Rank") %>' Columns="50" MaxLength="50" /></td>
								<td><asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' Columns="50" MaxLength="50" /></td>
								<td><asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' Columns="50" MaxLength="50" /></td>
								<td><asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' Columns="50" MaxLength="50" /></td>
							</tr>
							<tr>
								<td>Link</td>
								<td colspan="4"><asp:TextBox ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>' Width="52em" Columns="150" MaxLength="150" /></td>
							</tr>
							</tr>
								<td colspan="5"><b>Details</b></td>
							</tr>
							<tr>
								<td colspan="5">
									<asp:TextBox ID="DetailsTextBox" runat="server" Text='<%# Bind("Details") %>' TextMode="MultiLine" Rows="10" Columns="90" Width="98%" />
								</td>
							</tr>
						</table>
						<div>
							<asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
							&nbsp;
							<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
						</div>
					</EditItemTemplate>
					<InsertItemTemplate>
						<table width="98%">
							<tr>
								<td><b>Rank</b></td>
								<td><b>LastName</b></td>
								<td><b>FirstName</b></td>
								<td><b>Status</b></td>
							</tr>
							<tr>
								<td><asp:TextBox ID="RankTextBox" runat="server" Text='<%# Bind("Rank") %>' Columns="50" MaxLength="50" /></td>
								<td><asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' Columns="50" MaxLength="50" /></td>
								<td><asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' Columns="50" MaxLength="50" /></td>
								<td><asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' Columns="50" MaxLength="50" /></td>
							</tr>
							<tr>
								<td><b>Link</b></td>
								<td colspan="3"><asp:TextBox ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>' Columns="150" MaxLength="150" /></td>
							</tr>
								<td colspan="4"><b>Details</b></td>
							</tr>
							<tr>
								<td colspan="4">
									<asp:TextBox ID="DetailsTextBox" runat="server" Text='<%# Bind("Details") %>' TextMode="MultiLine" Rows="10" Columns="90" Width="98%" />
								</td>
							</tr>
						</table>
						<div>
							<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
							&nbsp;
							<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
						</div>
					</InsertItemTemplate>
					<ItemTemplate>
						<table width="98%">
							<tr>
								<td><b>Id</b></td>
								<td><b>Rank</b></td>
								<td><b>LastName</b></td>
								<td><b>FirstName</b></td>
								<td><b>Status</b></td>
							</tr>
							<tr>
								<td><asp:Label runat="server" Text='<%# Eval("Id") %>' /></td>
								<td><asp:Label runat="server" Text='<%# Eval("Rank") %>' /></td>
								<td><asp:Label runat="server" Text='<%# Eval("LastName") %>' /></td>
								<td><asp:Label runat="server" Text='<%# Eval("FirstName") %>' /></td>
								<td><asp:Label runat="server" Text='<%# Eval("Status") %>' /></td>
							</tr>
							<tr>
								<td><b>Link</b></td>
								<td colspan="4"><asp:Label runat="server" Text='<%# Eval("Link") %>' /></td>
							</tr>
								<td colspan="5"><b>Details</b></td>
							</tr>
							<tr>
								<td colspan="5">
									<asp:Label runat="server" Text='<%# Eval("Details") %>' />
								</td>
							</tr>
						</table>
						<div>
							<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
							&nbsp;
							<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
						</div>
					</ItemTemplate>
				</asp:FormView>
			</ContentTemplate>
		</asp:UpdatePanel>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>

