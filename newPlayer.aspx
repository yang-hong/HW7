<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageLol.master" AutoEventWireup="false" CodeFile="newPlayer.aspx.vb" Inherits="newPlayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 New Players
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
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="lol_name" HeaderText="lol Name" SortExpression="lol_name" />
                <asp:BoundField DataField="ranked_tier" HeaderText="Ranked Tier" SortExpression="ranked_tier" />
                <asp:BoundField DataField="games_played" HeaderText="Games Played" SortExpression="games_played" />
                <asp:BoundField DataField="win_rate" HeaderText="Win Rate" SortExpression="win_rate" />
                <asp:BoundField DataField="best_champains" HeaderText="Best Champains" SortExpression="best_champains" />
                <asp:BoundField DataField="best_champains_win_rate" HeaderText="Best Champains Win Rate" SortExpression="best_champains_win_rate" />
                <asp:BoundField DataField="main_role" HeaderText="Main Role" SortExpression="main_role" />
                <asp:BoundField DataField="prefer_mode" HeaderText="Prefer Mode" SortExpression="prefer_mode" />
                <asp:BoundField DataField="introduction" HeaderText="Introduction" SortExpression="introduction" />
                <asp:BoundField DataField="contact_info" HeaderText="Contact Info" SortExpression="contact_info" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </p>
</asp:Content>

