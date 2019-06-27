<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="CreateProject.aspx.cs" Inherits="caslab12thapril.CreateProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div >
                              
													<h3 class="modal-title">Create Project</h3>
												</div>
												<div class="modal-body">
													

                                                          
                                                        <div class="form-group">
															<div class="col-lg-3">
																<asp:label runat="server" >ID:</asp:label>
															</div>
															<div class="col-lg-6">
																<asp:textbox ID="Textbox1" ReadOnly="true"  runat="server"  class="form-control"/>
																</div>
															
																</div><br/><br/>
                                                        <div class="form-group">
															<div class="col-lg-3">
																<asp:label runat="server" >Employee ID:</asp:label>
															</div>
															<div class="col-lg-6">
																<asp:textbox ID="empid"  runat="server"  ReadOnly="true" class="form-control"/>
																</div>
															
																</div><br/><br/>
                                                         <div class="form-group">
															<div class="col-lg-3">
																<asp:label runat="server" >Employee Name:</asp:label>
															</div>
															<div class="col-lg-6">
																<asp:textbox ID="empname"  runat="server"  ReadOnly="true" class="form-control"/>
																</div>
															
																</div><br/><br/>
														<div class="form-group">
															<div class="col-lg-3">
																<asp:label runat="server" >Project ID:</asp:label>
															</div>
															<div class="col-lg-6">
																<asp:textbox ID="txtprojectid" runat="server"  ReadOnly="true" class="form-control"/>
																</div>
															
																</div>
                                                        	<br/><br/>
                                                        <div class="form-group">
															<div class="col-lg-3">
																<asp:label runat="server" >Project Title:</asp:label>
															</div>
															<div class="col-lg-6">
																<asp:textbox ID="txtprojectname" runat="server"   class="form-control"/>
																</div>
																
																</div>
                                                        <br /><br/>
																<div class="form-group">
                                                                    <div class="col-lg-3">
																	<asp:label runat="server">Project Description:</asp:label>
                                                                        </div><br /><br />
																	<asp:TextBox runat="server" ID="txtcomment" TextMode="multiline" Columns="100" Rows="3"></asp:TextBox>
																</div>
																
																	<asp:button runat="server" ID="submit" text="submit" class="btn btn-primary" OnClick="submit_Click"></asp:button>
																<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
															</div>
															
														
      
    <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="ProjectId">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="EmpId" HeaderText="EmpId" SortExpression="EmpId" />
            <asp:BoundField DataField="ProjectId" HeaderText="ProjectId" SortExpression="ProjectId" />
            <asp:BoundField DataField="Projectname" HeaderText="Projectname" SortExpression="Projectname" />
            <asp:BoundField DataField="ProjectDescription" HeaderText="ProjectDescription" SortExpression="ProjectDescription" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MatreyPharmaConnectionString %>" SelectCommand="proc_GetProjectDetailsByEmpid" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="EmpId" SessionField="Session[&quot;EmpId&quot;]" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>




</asp:Content>
