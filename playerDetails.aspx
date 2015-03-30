<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageLol.master" AutoEventWireup="false" CodeFile="playerDetails.aspx.vb" Inherits="newPlayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 New Players
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:yang_HW7_lol %>" 
           
            SelectCommand="SELECT * FROM [yang_HW7_lol] WHERE ([ID] = @ID)" >
            
            <DeleteParameters>
                   
            </DeleteParameters>
            <InsertParameters>
             
              
             
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
            
        
            

            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="101px" Width="342px" HeaderText="Player Details"
CssClass="cssdetailsview"
HeaderStyle-CssClass="header"
FieldHeaderStyle-CssClass="fieldheader"
ItemStyle-CssClass="item"
AlternatingRowStyle-CssClass="altrow"
CommandRowStyle-CssClass="command"
PagerStyle-CssClass="pager" >
<AlternatingRowStyle CssClass="altrow"></AlternatingRowStyle>

<CommandRowStyle CssClass="command"></CommandRowStyle>

<FieldHeaderStyle CssClass="fieldheader"></FieldHeaderStyle>
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
            </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>
        </asp:DetailsView>
    </p>
</asp:Content>

