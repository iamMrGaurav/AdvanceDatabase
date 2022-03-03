<%@ Page Title="Students" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="AdvanceDatabase.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h3>Students</h3>
        <h4>
            Student Id  
        </h4> 
         <asp:TextBox ID="StudentId" runat="server" OnTextChanged="StudentId_TextChanged" Width="174px"></asp:TextBox><br /><br />
         <h4>
            Student Name 
       
        </h4>
         <asp:TextBox ID="StudentName" runat="server" OnTextChanged="StudentId_TextChanged"></asp:TextBox><br />
        <br />
       

        <h4>
            Mobile Number 
      
        </h4> 
          <asp:TextBox ID="MobileNumber" runat="server" OnTextChanged="StudentId_TextChanged"></asp:TextBox><br /><br />
        <h4>
            Email Address  
           </h4>
         <asp:TextBox ID="Email" runat="server" OnTextChanged="StudentId_TextChanged"></asp:TextBox><br />
    <br />
        <h4>
            Academic Year  
         </h4>  <asp:TextBox ID="AcademicYear" runat="server" OnTextChanged="StudentId_TextChanged" TextMode="Date"></asp:TextBox><br />
      <br />
        <asp:Button ID="Insert" runat="server" Text="Insert" OnClick="Insert_Click" />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
                <asp:BoundField DataField="EMAIL_ADDRESS" HeaderText="EMAIL_ADDRESS" SortExpression="EMAIL_ADDRESS" />
                <asp:BoundField DataField="MOBILE_NUMBER" HeaderText="MOBILE_NUMBER" SortExpression="MOBILE_NUMBER" />
                <asp:BoundField DataField="ACADEMIC_YEAR" HeaderText="ACADEMIC_YEAR" SortExpression="ACADEMIC_YEAR" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM &quot;STUDENTS&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID" InsertCommand="INSERT INTO &quot;STUDENTS&quot; (&quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot;, &quot;EMAIL_ADDRESS&quot;, &quot;MOBILE_NUMBER&quot;, &quot;ACADEMIC_YEAR&quot;) VALUES (:STUDENT_ID, :STUDENT_NAME, :EMAIL_ADDRESS, :MOBILE_NUMBER, :ACADEMIC_YEAR)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot;, &quot;EMAIL_ADDRESS&quot;, &quot;MOBILE_NUMBER&quot;, &quot;ACADEMIC_YEAR&quot; FROM &quot;STUDENTS&quot;" UpdateCommand="UPDATE &quot;STUDENTS&quot; SET &quot;STUDENT_NAME&quot; = :STUDENT_NAME, &quot;EMAIL_ADDRESS&quot; = :EMAIL_ADDRESS, &quot;MOBILE_NUMBER&quot; = :MOBILE_NUMBER, &quot;ACADEMIC_YEAR&quot; = :ACADEMIC_YEAR WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID">
            <DeleteParameters>
                <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter Name="STUDENT_ID" Type="Decimal" ControlID="StudentId" />
                <asp:ControlParameter Name="STUDENT_NAME" Type="String" ControlID="StudentName" />
                <asp:ControlParameter Name="EMAIL_ADDRESS" Type="String" ControlID="Email"/>
                <asp:ControlParameter Name="MOBILE_NUMBER" Type="String" ControlID="MobileNumber"/>
                <asp:ControlParameter Name="ACADEMIC_YEAR" Type="DateTime" ControlID="AcademicYear" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="STUDENT_NAME" Type="String" />
                <asp:Parameter Name="EMAIL_ADDRESS" Type="String" />
                <asp:Parameter Name="MOBILE_NUMBER" Type="String" />
                <asp:Parameter Name="ACADEMIC_YEAR" Type="DateTime" />
                <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />

    
    </div>
</asp:Content>
