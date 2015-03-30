<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageLol.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    League of Legends Communication
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [yang_HW7_lol] WHERE [ID] = @ID" InsertCommand="INSERT INTO [yang_HW7_lol] ([lol_name], [ranked_tier], [games_played], [win_rate], [best_champains], [best_champains_win_rate], [main_role], [prefer_mode], [introduction], [contact_info]) VALUES (@lol_name, @ranked_tier, @games_played, @win_rate, @best_champains, @best_champains_win_rate, @main_role, @prefer_mode, @introduction, @contact_info)" SelectCommand="SELECT * FROM [yang_HW7_lol]" UpdateCommand="UPDATE [yang_HW7_lol] SET [lol_name] = @lol_name, [ranked_tier] = @ranked_tier, [games_played] = @games_played, [win_rate] = @win_rate, [best_champains] = @best_champains, [best_champains_win_rate] = @best_champains_win_rate, [main_role] = @main_role, [prefer_mode] = @prefer_mode, [introduction] = @introduction, [contact_info] = @contact_info WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="lol_name" Type="String" />
                <asp:Parameter Name="ranked_tier" Type="String" />
                <asp:Parameter Name="games_played" Type="String" />
                <asp:Parameter Name="win_rate" Type="String" />
                <asp:Parameter Name="best_champains" Type="String" />
                <asp:Parameter Name="best_champains_win_rate" Type="String" />
                <asp:Parameter Name="main_role" Type="String" />
                <asp:Parameter Name="prefer_mode" Type="String" />
                <asp:Parameter Name="introduction" Type="String" />
                <asp:Parameter Name="contact_info" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="lol_name" Type="String" />
                <asp:Parameter Name="ranked_tier" Type="String" />
                <asp:Parameter Name="games_played" Type="String" />
                <asp:Parameter Name="win_rate" Type="String" />
                <asp:Parameter Name="best_champains" Type="String" />
                <asp:Parameter Name="best_champains_win_rate" Type="String" />
                <asp:Parameter Name="main_role" Type="String" />
                <asp:Parameter Name="prefer_mode" Type="String" />
                <asp:Parameter Name="introduction" Type="String" />
                <asp:Parameter Name="contact_info" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" CssClass="cssgridview" AllowPaging="True" PageSize="5" AlternatingRowStyle-CssClass="alt" PagerStyle-CssClass="pgr">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField DataField="lol_name" HeaderText="lol Name" SortExpression="lol_name" />
                <asp:BoundField DataField="ranked_tier" HeaderText="Ranked Tier" SortExpression="ranked_tier" />
                <asp:BoundField DataField="introduction" HeaderText="Introduction" SortExpression="introduction" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="playerDetails.aspx?ID={0}" Text="View" />
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

