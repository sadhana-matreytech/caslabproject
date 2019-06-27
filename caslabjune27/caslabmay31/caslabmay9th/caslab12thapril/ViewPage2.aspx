<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewPage2.aspx.cs" Inherits="caslab12thapril.ViewPage2" EnableEventValidation="false" %>

<%@ Register Assembly="EO.Web" Namespace="EO.Web" TagPrefix="eo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="https://use.fontawesome.com/aac5c45839.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
     <script src="ckeditor/ckeditor.js"></script>
    <script src="https://use.fontawesome.com/aac5c45839.js"></script>
    <script src="https://cdn.ckeditor.com/4.10.0/standard/ckeditor.js"></script>
    
   
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div  class="col-lg-4" >
        <br />
									<asp:image id="picture" runat="server" style= "margin-left: 17px;margin-top: 79px;" Height="300" Width="200"/><br /><br />
    <asp:Button runat="server" ID="assigntask"   Text="Assign Task" class="btn btn-primaimagery"    />
							<asp:Label ID="frontpagedata" runat="server" Visible="false" />
        <asp:Label ID="editorpage"	 runat="server"  Visible="false"/>	
    </div> 
    
									<div  class="col-lg-8 three" > 

                                        <asp:Label ID="label" runat="server" Visible="false"></asp:Label>
							<br/><br/><br/>																																					

                                       																																										
  <asp:Label runat="server" Visible="false" ID="taskid">SelctedTask:</asp:Label>
									 
                               
                                      <asp:LinkButton runat="server" ID="LinkButton1" class="btn btn-add"   aria-haspopup="true" aria-expanded="false" Text="EDIT DOC" Font-Size="X-Large" ForeColor="YellowGreen" Style="margin-left:574px;margin-top:-114px"
                                       CauseValidation="false" OnClick="LinkButton1_Click"    />
                                        <asp:Image id="logo" src="\img\caslab.jpg" runat="server" Height="25" style="margin-top:-81px"  />
                                        <asp:Panel ID="Panel1" runat="server" style="margin-top:-56px">
                                            
                                    <table>
                                        <tr><td></td>
                                            <td></td><td></td><td></td>
                                            <td>
                                             <asp:Label ID="Label10" runat="server" style="margin-left:592px;"></asp:Label>
                                                </td>
                                        </tr>
                                    </table>
                                            <hr /><br />
                                            <br /><br />
                                             <br /><br /><br />
                                        
                                            <table border="1" style="font-size:28px;text-align:center;width:700px;margin-left:20px;text-transform:uppercase">
                                                <tr>
                                                    <td>
                                        <asp:Label ID="Label12" runat="server" Style="text-transform:uppercase" ></asp:Label>
                                                   </td> </tr>
                                             </table>
                                       
   <br /><br /><br /><br />
                                           <div style="margin-left:20px;">
    <%--<asp:PlaceHolder ID = "PlaceHolder1" runat="server" />--%>
            </div> <asp:label runat="server"  id="icon" class="lbl" for="sel1" Width="0px"  Style="font-size: 90px; margin-bottom: 0px; margin-left:167px;margin-top:-69px">RELEASED</asp:label>
                <br /><br /><br /><br />
                 <asp:Label runat="server" ID="SUMMARY"  Text="Summary:"/>
                                        <br />
                                        <asp:TextBox ID="summarytext" class="form-control" runat="server"  TextMode="MultiLine"/>
                                            
                                             <asp:label ID="aftersummarytext"  runat="server"/>
 <asp:TextBox runat="server"    class="form-control" Visible="false" id="reviewerstatus"  />
                                          <asp:TextBox runat="server"    class="form-control" Visible="false" id="approverstatus"  />
                                        
   <asp:Label ID="iframesource" runat="server" visible="false"/>
    <asp:Label ID="folder" runat="server" visible="false"/>
    <asp:label ID="datetext"  runat="server" Visible="false"/>
               <br /><br />
               
              
       
                                       
                                        
                                              
      <div class="col-lg-4">
                                    
                                            </div>
                                             </asp:Panel>
                <iframe id="myframe" width="730" height="480"  style="margin-top:-50px" runat="server"></iframe>  
                 </div>    
                                                                                                                                      
</asp:Content>