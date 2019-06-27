<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Rawmaterial.aspx.cs" Inherits="caslab12thapril.Rawmaterial" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <h1 style="color:red;">Raw Material List</h1>
    
      <div class="content-wrapper">
            <!-- Content Header (Page header) -->
           
            <!-- Main content -->
            <div class="content">
               <div class="row">
                  <div class="col-sm-12 col-md-12">
                     <div class="panel panel-bd lobidrag">
                      
                        <div class="panel-body" >

                            <%--  <div class="table-responsive">--%>
                                	<div  class="table-responsive" >



                                        <br />
                                        
    <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered" OnRowDataBound="OnRowDataBound" DataKeyNames="RawmaterialCode"  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
             <asp:TemplateField>
                <HeaderTemplate>
                    <asp:CheckBox ID="CheckBox1" AutoPostBack="true" OnCheckedChanged="OnCheckedChanged" runat="server" />
                
               
                </HeaderTemplate>
                 <ItemTemplate>
                    
                    <asp:CheckBox  AutoPostBack="true" OnCheckedChanged="OnCheckedChanged" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:TemplateField HeaderText="RawmaterialCode">
               <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("RawmaterialCode") %>'></asp:Label>

                   <%-- <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RawmaterialCode") %>'></asp:TextBox>
                
                --%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="RawmaterialName">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("RawmaterialName") %>'></asp:Label>
                      <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("RawmaterialName") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="RawmaterialType">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("RawmaterialType") %>'></asp:Label>

                
                
                  <%--  <asp:DropDownList ID="TextBox3" runat="server"  Visible="false"></asp:DropDownList>--%>

                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity">
                   <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>

                    <%--<asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
              --%>
             
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Document">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Document") %>'></asp:Label>

                   <%-- <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("Document") %>'></asp:TextBox>
                --%>
               
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="BatchNumber">
             <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("BatchNumber") %>'></asp:Label>

                    <%--<asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("BatchNumber") %>'></asp:TextBox>
               --%>
                
                </ItemTemplate>
            </asp:TemplateField>
           
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
  </div><br />

         
                              <div class="modal fade" id="addrawmaterial" tabindex="-1" role="dialog">
                  <div class="modal-dialog">
                     <div class="modal-content">
                        <div class="modal-header modal-header-primary">
                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                           <h3><i class="fa fa-plus m-r-5"></i> Add Material </h3>
                        </div>
                        <div class="modal-body">
                           <div class="row">
                              <div class="col-md-12">
                                 <form class="form-horizontal">
                                    <fieldset>
                                       <!-- Text input-->
                                       <div class="col-md-6 form-group">
                                          <asp:label runat="server" class="control-label">Raw Material Code</asp:label>
                                          <asp:textbox runat="server" ID="txtcode" type="text" placeholder="Code" class="form-control"/>
                                       </div>
                                      
                                       <div class="col-md-6 form-group">
                                          <asp:label runat="server" class="control-label">Raw Material Name</asp:label>
                                          <asp:textbox runat="server" ID="txtname"  type="text" placeholder="Name" class="form-control"/>
                                       </div>
                                       
                                      
                                      
                                       <div class="col-md-6 form-group">
                                          <asp:label runat="server" class="control-label">Type Of Material </asp:label>
                                             <asp:DropDownList runat="server" ID="typeofmaterial" class="form-control">
                                                 <asp:listitem Text="select Material" Value=""></asp:listitem>
                                     <asp:ListItem Text="Solid" ></asp:ListItem>
                                     <asp:ListItem Text="Liquid" ></asp:ListItem>
                                     <asp:ListItem Text="Gas" ></asp:ListItem>
                                             </asp:DropDownList>
                                       </div>
                                            <div class="col-md-3 form-group">
                                                
                                          <asp:label runat="server" class="control-label">  Quantity </asp:label>
                                          <asp:textbox runat="server" ID="quntatity"  type="text" placeholder="Quantity" class="form-control"/>
                                        
                                          
                                        
                                       </div>
                                            <div class="col-md-3 form-group">
                                         <asp:label runat="server" class="control-label">  In Terms Of </asp:label>
                                          <asp:DropDownList runat="server" ID="termsof"  class="form-control">
                                          <asp:listitem Text="select" Value=""></asp:listitem>
                                     <asp:ListItem Text="Liters" Value="1"></asp:ListItem>
                                     <asp:ListItem Text="Kgs" Value="2"></asp:ListItem>
                                     <asp:ListItem Text="Grams" Value="3"></asp:ListItem>
                                          </asp:DropDownList>
                                                </div>
									    <div class="col-md-6 form-group">
									   
                                 <asp:label runat="server" class="control-label">Supplier Information</asp:label>
                                 <asp:textbox runat="server"  type="text" ID="txtinforamation" placeholder="Information"  class="form-control"></asp:textbox>
							  </div>

                                           <div class="col-md-6 form-group">
                                          <asp:label runat="server" class="control-label">Minimum Quantity to mantain</asp:label>
                                          <asp:textbox runat="server" ID="txtmin" type="text" placeholder="Minimum Quantity" class="form-control"/>
                                       </div>

                                          <div class="col-md-6 form-group">
                                          <asp:label runat="server" class="control-label">Document</asp:label>
                                          <asp:textbox runat="server" ID="txtdocu" type="text"  class="form-control"/>
                                       </div>


                                          <div class="col-md-6 form-group">
                                          <asp:label runat="server" class="control-label">Batch Number</asp:label>
                                          <asp:textbox runat="server" ID="txtbatch" type="text"  class="form-control"/>
                                       </div>





                                       <div class="col-md-12 form-group user-form-group">
                                          <div class="pull-right">
                                             <button type="button" class="btn btn-danger btn-sm">Cancel</button>
                                            <asp:Button runat="server" ID="Submit" Text="Submit" OnClick="Submit_Click1"  causesValidation="false"/>
                                               <%--<asp:LinkButton ID="lnksubmit" Text="submit"   runat="server"  class="btn btn-primary" OnClick="lnksubmit_Click"/>--%>
                                          </div>
                                       </div>
                                    </fieldset>
                                 </form>
                              </div>
                           </div>
                        </div>
                        <div class="modal-footer">
                           <button type="button" class="btn btn-danger pull-left" data-dismiss="modal">Close</button>
                        </div>
                     </div>
                     <!-- /.modal-content -->
                  </div>
                  <!-- /.modal-dialog -->
               </div>
               <!-- /.modal -->
							
                            
            
         <div class="modal fade" id="addtask" tabindex="-1" role="dialog">
                  <div class="modal-dialog">
                     <div class="modal-content">
                        <div class="modal-header modal-header-primary">
                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                           <h3>Warning</h3>
                            <h5>Do You want to add RawMaterial to the list</h5>
                        </div>
                        <div class="modal-body">
                           <div class="row">
                              <div class="col-md-3">
                                 <div class="form-horizontal">
                                    <fieldset>
                                       <!-- Text input-->
                                
                                   
                                          
                                       <div class="col-md-12 form-group user-form-group">
                                          <div class="pull-right">
                                               <button type="button" data-dismiss="modal" class="btn btn-danger btn-sm">Cancel</button>
                                              
                                            <button type="button" class="btn btn-primary"  data-toggle="modal" data-dismiss="modal"  data-target="#addrawmaterial"><i class="fa fa-file-plus"></i> Add </button>

                                          </div>
                                       </div>
                                    </fieldset>
                                 </div>
                              </div>
                           </div>
                        </div>
                        
                     </div>
                     <!-- /.modal-content -->
                  </div>
                  <!-- /.modal-dialog -->
               </div>
               <!-- /.modal -->


                             <div class="modal fade" id="deleterow" tabindex="-1" role="dialog">
                  <div class="modal-dialog">
                     <div class="modal-content">
                        <div class="modal-header modal-header-primary">
                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                           <h3>Warning</h3>
                            <h5>Do You want to Delete RawMaterial From list</h5>
                        </div>
                        <div class="modal-body">
                           <div class="row">
                              <div class="col-md-3">
                                 <div class="form-horizontal">
                                    <fieldset>
                                       <!-- Text input-->
                                
                                   
                                          
                                       <div class="col-md-12 form-group user-form-group">
                                          <div class="pull-right">
                                               <button type="button" data-dismiss="modal" class="btn btn-danger btn-sm">Cancel</button>
                                              <asp:Button runat="server" ID="delete" Text="delete" OnClick="delete_Click" class="btn btn-danger btn-sm" causesValidation="false" />
                                  <%-- <asp:Button runat="server" ID="deletebtn" Text="delete" OnClick="deletebtn_Click" class="btn btn-danger btn-sm" />
                                              <asp:LinkButton ID="lnkDelete" Text="Delete"   runat="server"  class="btn btn-danger btn-sm" Onclick="lnkDelete_Click"/>
                                              --%>

                                          </div>
                                       </div>
                                    </fieldset>
                                 </div>
                              </div>
                           </div>
                        </div>
                        
                     </div>
                     <!-- /.modal-content -->
                  </div>
                  <!-- /.modal-dialog -->
               </div>
               <!-- /.modal -->
							  		  	  
							  



          <div class="buttonexport">
                                 
                             <asp:Button ID="Button2" runat="server" Text="Edit" class="fa fa-file-text" CausesValidation="false" OnClick="Button2_Click"  />
                               <a href="#" class="btn btn-add" data-toggle="modal" data-target="#"><i class="fa fa-file-text"></i> Export </a> 
                               <a href="#" class="btn btn-add" data-toggle="modal" data-target="#"><i class="fa fa-file-text"></i> Disable/Enable </a> 
                               <a href="#" class="btn btn-add" data-toggle="modal" data-target="#addtask"><i class="fa fa-file-text"></i> Replace </a> 
                           <a href="#" class="btn btn-add" data-toggle="modal" data-target="#deleterow"><i class="fa fa-file-text"></i> Delete </a>
                               <a href="#" class="btn btn-add" data-toggle="modal" data-target="#addtask"><i class="fa fa-file-text"></i> Add </a>

								 
                              </div>
                     
                     </div>
                  </div>
               </div>
            </div>
            <!-- /.content -->
         </div>
         <!-- /.content-wrapper -->
                                        </div>
   
</asp:Content>
