﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reviewer1.aspx.cs" Inherits="caslab12thapril.Reviewer1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="col-lg-11">
   <form>
   <div class="col-lg-4">
      <label style="float:right;" for="sel1">EmployeeId</label>
      
      </div>
    <div class="col-lg-6">
   <asp:TextBox runat="server" ID="employeeid" ReadOnly="true" class="form-control"></asp:TextBox>      
      </div>
	  <br/>
	  <br/>
	  <br/>

       <div class="col-lg-4">
      <label style="float:right;" for="sel1">Reviewer Employee Id</label>
      
      </div>
    <div class="col-lg-6">

        <asp:TextBox runat="server" ID="revempid" class="form-control"></asp:TextBox>
      </div>
	  <div class="col-lg-4">
      <label style="float:right;" for="sel1">reviewer</label>
      
      </div>
    <div class="col-lg-6">
      
      <asp:DropDownList runat="server" ID="reviwername" AutoPostBack="true" AppendDataBoundItems="true" class="form-control" OnSelectedIndexChanged="reviwername_SelectedIndexChanged"></asp:DropDownList>
      </div>
    
        <div class="col-lg-4">
      <label style="float:right;" for="sel1">Select TaskId</label>
      
      </div>
    <div class="col-lg-6">
      
     <asp:DropDownList runat="server" ID="tasks" DataSourceID="SqlDataSource1" DataTextField="TaskId" DataValueField="TaskId" AppendDataBoundItems="true" AutoPostBack="true" class="form-control">

     </asp:DropDownList>
      </div>

       <div class="col-lg-4">
            <asp:Button runat="server" ID="submit" OnClick="submit_Click" Text="Submit" class="btn btn-default" />
            </div>
         <div class="col-lg-4">
             <asp:Label ID="label1" runat="server"></asp:Label>

             </div>


       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MatreyPharmaConnectionString %>" SelectCommand="proc_GetProjectDetailsByEmpid1" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="EmpId" SessionField="Session[&quot;EmpId&quot;]" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

  </form>
  
  
</div>																																																																			</div>
						

</asp:Content>