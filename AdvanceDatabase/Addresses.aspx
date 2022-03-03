<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Addresses.aspx.cs" Inherits="AdvanceDatabase.Addresses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3>Address</h3>
        <h4>
           Address Id  
        </h4> 
         <asp:TextBox ID="AddressId" runat="server"></asp:TextBox>
           <h4>
            Country 
        </h4>
          <asp:TextBox ID="Country" runat="server"></asp:TextBox>
         <br />
            <h4>
                District
            </h4>
          <asp:TextBox ID="District" runat="server"></asp:TextBox>
         <br />
        <h4>
            City
        </h4> 
          <asp:TextBox ID="City" runat="server"></asp:TextBox>
         <h4>
            Street  
        </h4> 
         <asp:TextBox ID="Street" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Insert" runat="server" Text="Insert" OnClick="Insert_Click" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
                <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                <asp:BoundField DataField="DISTRICT" HeaderText="DISTRICT" SortExpression="DISTRICT" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;COUNTRY&quot;, &quot;DISTRICT&quot;, &quot;CITY&quot;, &quot;STREET&quot;) VALUES (:ADDRESS_ID, :COUNTRY, :DISTRICT, :CITY, :STREET)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT &quot;ADDRESS_ID&quot;, &quot;COUNTRY&quot;, &quot;DISTRICT&quot;, &quot;CITY&quot;, &quot;STREET&quot; FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;COUNTRY&quot; = :COUNTRY, &quot;DISTRICT&quot; = :DISTRICT, &quot;CITY&quot; = :CITY, &quot;STREET&quot; = :STREET WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
            <DeleteParameters>
                <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter Name="ADDRESS_ID" Type="Decimal" ControlID="AddressId" />
                <asp:ControlParameter Name="COUNTRY" Type="String" ControlID="Country" />
                <asp:ControlParameter Name="DISTRICT" Type="String" ControlID="District"/>
                <asp:ControlParameter Name="CITY" Type="String" ControlID="City"/>
                <asp:ControlParameter Name="STREET" Type="String" ControlID="Street"/>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="COUNTRY" Type="String" />
                <asp:Parameter Name="DISTRICT" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="STREET" Type="String" />
                <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </div>
</asp:Content>
