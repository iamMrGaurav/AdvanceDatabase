<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="AdvanceDatabase.Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3>Teacher</h3>
         <h4>
           Teacher Id  
        </h4> 
         <asp:TextBox ID="TeacherId" runat="server"></asp:TextBox>
           <h4>
            Teacher Name 
        </h4>
          <asp:TextBox ID="TeacherName" runat="server"></asp:TextBox>
         <br />
            <h4>
                Email Address
            </h4>
          <asp:TextBox ID="EmailAddress" runat="server"></asp:TextBox>
         <br />
        <h4>
            Mobile Number
        </h4> 
          <asp:TextBox ID="MobileNumber" runat="server"></asp:TextBox>
         <h4>
            Department Id  
        </h4> 
         <asp:TextBox ID="Street" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Insert" runat="server" Text="Insert" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
                <asp:BoundField DataField="TEACHER_NAME" HeaderText="TEACHER_NAME" SortExpression="TEACHER_NAME" />
                <asp:BoundField DataField="EMAIL_ADDRESS" HeaderText="EMAIL_ADDRESS" SortExpression="EMAIL_ADDRESS" />
                <asp:BoundField DataField="MOBILE_NUMBER" HeaderText="MOBILE_NUMBER" SortExpression="MOBILE_NUMBER" />
                <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" SortExpression="DEPARTMENT_ID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM &quot;TEACHERS&quot; WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID" InsertCommand="INSERT INTO &quot;TEACHERS&quot; (&quot;TEACHER_ID&quot;, &quot;TEACHER_NAME&quot;, &quot;EMAIL_ADDRESS&quot;, &quot;MOBILE_NUMBER&quot;, &quot;DEPARTMENT_ID&quot;) VALUES (:TEACHER_ID, :TEACHER_NAME, :EMAIL_ADDRESS, :MOBILE_NUMBER, :DEPARTMENT_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT &quot;TEACHER_ID&quot;, &quot;TEACHER_NAME&quot;, &quot;EMAIL_ADDRESS&quot;, &quot;MOBILE_NUMBER&quot;, &quot;DEPARTMENT_ID&quot; FROM &quot;TEACHERS&quot;" UpdateCommand="UPDATE &quot;TEACHERS&quot; SET &quot;TEACHER_NAME&quot; = :TEACHER_NAME, &quot;EMAIL_ADDRESS&quot; = :EMAIL_ADDRESS, &quot;MOBILE_NUMBER&quot; = :MOBILE_NUMBER, &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID">
            <DeleteParameters>
                <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
                <asp:Parameter Name="TEACHER_NAME" Type="String" />
                <asp:Parameter Name="EMAIL_ADDRESS" Type="String" />
                <asp:Parameter Name="MOBILE_NUMBER" Type="String" />
                <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TEACHER_NAME" Type="String" />
                <asp:Parameter Name="EMAIL_ADDRESS" Type="String" />
                <asp:Parameter Name="MOBILE_NUMBER" Type="String" />
                <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </div>
</asp:Content>
