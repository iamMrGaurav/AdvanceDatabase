<%@ Page Title="Departments" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="AdvanceDatabase.Departments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
      
    <asp:Label ID="Label1" runat="server" Text="Department"></asp:Label><br /> <br />
     <asp:Label ID="Label2" runat="server" Text="Department Id"></asp:Label><br /><br />

    <asp:TextBox ID="DepartmentId" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox> <br /><br />

     <asp:Label ID="Label3" runat="server" Text="Department Name"></asp:Label><br /><br />

     <asp:TextBox ID="DepartmentName" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />  <br /> 
        <asp:Button ID="Insert" runat="server" Text="Insert" OnClick="Insert_Click" /> <br />  <br />
        
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
            <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM &quot;DEPARTMENTS&quot; WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENTS&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT &quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot; FROM &quot;DEPARTMENTS&quot;" UpdateCommand="UPDATE &quot;DEPARTMENTS&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID">
        <DeleteParameters>
            <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter Name="DEPARTMENT_ID" Type="Decimal" ControlID="DepartmentId"  />
            <asp:ControlParameter Name="DEPARTMENT_NAME" Type="String" ControlID="DepartmentName" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
            <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>

   </div>
   
</asp:Content>
