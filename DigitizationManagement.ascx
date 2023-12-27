<%@ Control Language="VB" AutoEventWireup="false" CodeFile="DigitizationManagement.ascx.vb" Inherits="Digitization_DigitizationManagement" %>
<div class="row">
     <div class="panel panel-flat">

   
     <div class="panel-body">
                         <header><style> h1{font-size: 20px;} </style></header>
 <h1>DIGITIZATION REQUISITION MANAGEMENT</h1>
                <legend class="text-semibold"><i style="font-size:inherit" class="icon-file-text2 position-left" ></i>DOCUMENT CLASSIFICATION AND CHECK-IN INFORMATION</legend>
            <div class="row">
                <div class="form-group">
                      <div class="col-lg-3">
                          <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                           <ContentTemplate>
                              Department
                             <asp:TextBox ID="Department" CssClass="form-control" runat="server" ></asp:TextBox>
                             <asp:RequiredFieldValidator ValidationGroup="DigitizationManagement" ID="RequiredFieldValidator21" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="Department" ErrorMessage="Please Select A Department"></asp:RequiredFieldValidator>
                           </ContentTemplate>
                          </asp:UpdatePanel>        
                      </div>

                <div class="col-lg-3">
                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                       <ContentTemplate>
                           Sub Department
                           <asp:textbox ID="SubDepartment" CssClass="form-control" runat="server" ></asp:textbox>
                           <asp:RequiredFieldValidator ValidationGroup="DigitizationManagement" ID="RequiredFieldValidator5" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="SubDepartment" ErrorMessage="select a sub department"></asp:RequiredFieldValidator>
                       </ContentTemplate>
                   </asp:UpdatePanel>
               </div>

                 <div class="col-lg-3">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            Sub Level
                           <asp:textbox ID="SubLevel" CssClass="form-control" runat="server" ></asp:textbox>
                           <asp:RequiredFieldValidator ValidationGroup="DigitizationManagement" ID="RequiredFieldValidator1" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="SubLevel" ErrorMessage="please select sublevel"></asp:RequiredFieldValidator>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="col-lg-3">                    
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        Document Class
                        <asp:textbox ID="DocumentClass" CssClass="form-control" runat="server" ></asp:textbox>
                        <asp:RequiredFieldValidator ValidationGroup="DigitizationManagement" ID="RequiredFieldValidator2" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="DocumentClass" ErrorMessage="please select document class"></asp:RequiredFieldValidator>
                    </ContentTemplate>
                 </asp:UpdatePanel>
                     </div>  </div>  </div>      
                  <div class="row">
                  <div class="form-group">
                  <div class="col-lg-6">
                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                    <ContentTemplate>
                         Title Of The Document File
                       <asp:textbox ID="Title"  CssClass="form-control" runat="server" ></asp:textbox>
                       <asp:RequiredFieldValidator ValidationGroup="DigitizationManagement" ID="RequiredFieldValidator3" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="Title" ErrorMessage="Please Enter A Title"></asp:RequiredFieldValidator>
                    </ContentTemplate>
                </asp:UpdatePanel>
                           </div>
                          

                     <div class="col-lg-3">
               <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                  <ContentTemplate>
                           Version Type
                     <asp:textbox ID="VersionType" CssClass="form-control" runat="server"></asp:textbox>
                     <asp:RequiredFieldValidator ValidationGroup="DigitizationManagement" ID="RequiredFieldValidator4" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="VersionType" ErrorMessage="Please select VersionType"></asp:RequiredFieldValidator>
                  </ContentTemplate>
               </asp:UpdatePanel>
                    </div>

          <div class="col-lg-3">
            <asp:UpdatePanel ID="UpdatePanel6" runat="server">
               <ContentTemplate>
                    Docket Barcode Serial
                 <asp:textbox ID="Barcode"  CssClass="form-control" runat="server"></asp:textbox>
                 <asp:RequiredFieldValidator ValidationGroup="DigitizationManagement" ID="RequiredFieldValidator8" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="Barcode" ErrorMessage="Please Enter A Barcode"></asp:RequiredFieldValidator>
               </ContentTemplate>
            </asp:UpdatePanel>
         </div>

               </div> </div>
           <div class="row">
           <div class="form-group">
           <div class="col-lg-3">
        <asp:UpdatePanel ID="UpdatePanel7" runat="server">
           <ContentTemplate>
              Document Reference#(SOP#,BMR#Etc)
             <asp:textbox ID="Reference"  CssClass="form-control" runat="server" ></asp:textbox>
             <asp:RequiredFieldValidator ValidationGroup="DigitizationManagement" ID="RequiredFieldValidator6" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="Reference" ErrorMessage="Please Enter a Reference"></asp:RequiredFieldValidator>
           </ContentTemplate>
        </asp:UpdatePanel>
                 </div>
               

                <div class="col-lg-3">
                   <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                      <ContentTemplate>
                           Version#
                         <asp:textbox ID="Version"  CssClass="form-control" runat="server" ></asp:textbox>
                         <asp:RequiredFieldValidator ValidationGroup="DigitizationManagement" ID="RequiredFieldValidator11" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="Version" ErrorMessage="Please Enter Version"></asp:RequiredFieldValidator>
                      </ContentTemplate>
                   </asp:UpdatePanel>
                 </div>

            <div class="col-lg-3">
              <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                <ContentTemplate>
                   Document Classification
                  <asp:textbox ID="DocumentClassification"  CssClass="form-control" runat="server"></asp:textbox>
                  <asp:RequiredFieldValidator ValidationGroup="DigitizationManagement" ID="RequiredFieldValidator12" runat="server" Display="Dynamic" CssClass="label label-danger" EnableClientScript="false"  ControlToValidate="DocumentClassification" InitialValue="0"  ErrorMessage="Please Select Document Classification"></asp:RequiredFieldValidator>
                </ContentTemplate>
              </asp:UpdatePanel>
                </div>
                    <div class="col-lg-3">                    
                    <ContentTemplate>
                       Sensitivity
                    <asp:textbox ID="Sensitivity"  CssClass="form-control" runat="server"></asp:textbox>
                    </ContentTemplate>
                    </div>
                    </div> </div>
    <div class="row">
      <div class="form-group">
        <div class="col-lg-9">
               Remarks(Will not be published in DMS infinity.Use this option to provide any instructions to the scanning department)
            <ContentTemplate>
            <asp:textbox ID="Remarks"  CssClass="form-control" runat="server" ></asp:textbox>

             </ContentTemplate>
         </div>
      </div>

              <div class="form-group ">
                  <div class="col-lg-3">
                     <asp:Label ID="lblMessage" runat="server" CssClass="label label-danger"></asp:Label>
              </div>

            </div>
          </div>
    
                <ContentTemplate>
                   <asp:Button ID="btnSubmit" ValidationGroup="DigitizationManagement" class="btn btn-primary  " runat="server" Text="Submit The Requisition" />
                </ContentTemplate>
  </div>
      </div>   </div>
             
          