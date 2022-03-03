<%@ Page Title="Modules" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Modules.aspx.cs" Inherits="AdvanceDatabase.Modules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>

         <h3>Modules</h3>
        <h4>
            Module Code  
        </h4> 
         <asp:TextBox ID="ModuleCode" runat="server"></asp:TextBox>

           <h4>
            Module Title 
        </h4>
          <asp:TextBox ID="ModuleTitle" runat="server"></asp:TextBox>
         <br />
        <h4>
            Credit Hour 
        </h4> 
          <asp:TextBox ID="CreditHour" runat="server"></asp:TextBox>
         <br />
         <br />
         <asp:Button ID="Insert" runat="server" Text="Insert" OnClick="Insert_Click" />
         <br />
         <br />
         <br />
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" ReadOnly="True" SortExpression="MODULE_CODE" />
                 <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                 <asp:BoundField DataField="CREDIT_HOUR" HeaderText="CREDIT_HOUR" SortExpression="CREDIT_HOUR" />
             </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM &quot;MODULES&quot; WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE" InsertCommand="INSERT INTO &quot;MODULES&quot; (&quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDIT_HOUR&quot;) VALUES (:MODULE_CODE, :MODULE_NAME, :CREDIT_HOUR)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT &quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDIT_HOUR&quot; FROM &quot;MODULES&quot;" UpdateCommand="UPDATE &quot;MODULES&quot; SET &quot;MODULE_NAME&quot; = :MODULE_NAME, &quot;CREDIT_HOUR&quot; = :CREDIT_HOUR WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE">
             <DeleteParameters>
                 <asp:Parameter Name="MODULE_CODE" Type="Decimal" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:ControlParameter Name="MODULE_CODE" Type="Decimal" ControlID="ModuleCode" />
                 <asp:ControlParameter Name="MODULE_NAME" Type="String" ControlID="ModuleTitle"/>
                 <asp:ControlParameter Name="CREDIT_HOUR" Type="Decimal" ControlID="CreditHour" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="MODULE_NAME" Type="String" />
                 <asp:Parameter Name="CREDIT_HOUR" Type="Decimal" />
                 <asp:Parameter Name="MODULE_CODE" Type="Decimal" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <br />
    </div>
</asp:Content>
