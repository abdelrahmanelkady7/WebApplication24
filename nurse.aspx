<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nurse.aspx.cs" Inherits="WebApplication24.nurse" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor webpage</title>
    <link rel="stylesheet" href="doctor.css" />
</head>
<body>

    <form id="form1" runat="server">
    <div class="container">
         <h1>welcome nurse</h1>
    </div>
    <hr />
    <br /> <br />
    <h2>Today's schedule:</h2>
    <div class="gv-container">
        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="NumberOfPeople" HeaderText="NumberOfPeople" SortExpression="NumberOfPeople" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Illness" HeaderText="Illness" SortExpression="Illness" />
                <asp:BoundField DataField="SelectedDoctor" HeaderText="SelectedDoctor" SortExpression="SelectedDoctor" />
                <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
           
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Appointments]"></asp:SqlDataSource>
           
     </div>

            <div class="btn">
                <a href="notes.aspx" class="reserve-button">add notes on patient</a>
            </div>
      </form>

</body>
</html>

