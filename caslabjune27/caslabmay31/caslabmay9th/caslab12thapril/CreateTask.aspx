<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateTask.aspx.cs" Inherits="caslab12thapril.CreateTask" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="buttonexport">
          
                                 <a href="#" class="btn btn-add" data-toggle="modal" data-target="#cTask"><i class="fa fa-file-text"></i><h3> Create Your Task</h3></a> 
  						</div>
  <div class="modal" id="cTask" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Create Task</h4>
				</div>
				<div class="modal-body">
					
                        <div class="form-group">
							
                              
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
								<asp:TextBox runat="server" ReadOnly="true"   class="form-control" id="empid"  />
								</div>
								
								</div><br/><br/>
                            <div class="form-group">
							<div class="col-lg-3">
								<asp:label runat="server" >Employee Name:</asp:label>
							</div>
							<div class="col-lg-6">
								<asp:TextBox runat="server" ReadOnly="true"   class="form-control" id="empname"  />
								</div>
								
								</div><br/><br/>
                            <div class="form-group">
                            <div class="col-lg-3">
								<asp:label runat="server" >Project ID:</asp:label>
							</div>
							<div class="col-lg-6">
							
                                <asp:DropDownList runat="server" ID="Projectid" class="form-control" AppendDataBoundItems="true" AutoPostBack="true">

                                </asp:DropDownList>
                                	
								</div>
								
								</div><br/><br/>
						<div class="form-group">
							<div class="col-lg-3">
								<asp:label runat="server" >Task ID:</asp:label>
							</div>
							<div class="col-lg-6">
								<asp:TextBox runat="server" ReadOnly="true"   class="form-control" id="Taskid" />
								</div>
								
								</div><br/><br/>
                       
                        	
                            
								<div class="form-group">
									<asp:label runat="server" >Task Description:</asp:label>
								<asp:TextBox runat="server" ID="descrp" TextMode="multiline"  style='text-transform:uppercase' Columns="120" Rows="5"></asp:TextBox>
								</div>
								<div class="row">
									<div class="form-group">
										<div class="col-lg-3">
											  <asp:label runat="server">Chemicals</asp:label>
                                 <asp:dropdownlist runat="server" ID="chemicla" class="form-control">
                                    <asp:listitem Text="select chemical" Value=""></asp:listitem>
                                     <asp:ListItem Text="c" ></asp:ListItem>
                                     <asp:ListItem Text="H2o2"></asp:ListItem>
                                     <asp:ListItem Text="N" ></asp:ListItem>
                                
                                 </asp:dropdownlist>
										</div>
										<div class="col-lg-3">
											<asp:label runat="server">Quantity</asp:label>
											<asp:textbox runat="server"  class="form-control" id="qun"/>
											</div>
											<div class="col-lg-3">
												  <asp:label runat="server">Units</asp:label>
                                 <asp:dropdownlist runat="server" ID="units" class="form-control">
                                    <asp:listitem Text="select Units" Value=""></asp:listitem>
                                     <asp:ListItem Text="Liters"></asp:ListItem>
                                     <asp:ListItem Text="Grams" ></asp:ListItem>
                                     <asp:ListItem Text="MilliGrams"></asp:ListItem>
                                     <asp:ListItem Text="Kg"></asp:ListItem>
                                
                                 </asp:dropdownlist>
											<%--<asp:fileupload ID="photo" runat="server" ReadOnly="true" ></asp:fileupload>	--%>
											 </div>


										</div>
									</div>
											<br/>
												
														<asp:button runat="server" Text="submit" ID="task" OnClick="task_Click"  class="btn btn-primary"></asp:button>
                           <button type="button"  data-dismiss="modal" class="btn btn-primary">Close</button>
													
												</div>
												
											</div>
										</div>			
    </div>

</asp:Content>
