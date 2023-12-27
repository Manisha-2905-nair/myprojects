<%@ Control Language="VB" AutoEventWireup="false" CodeFile="EmployeeDetails.ascx.vb" Inherits="DUmmy_EmployeeDetails" %>
<div class="row">
    <div class="col-xs-8 col-sm-6 col-lg-12">

        <div class="panel panel-flat">

          
            <div class="panel-body">
                <header><style> h1{font-size: 40px;} </style></header>
 <h1>Employee Registration</h1>
                <legend class="text-semibold"><i style="font-size:larger" class="icon-file-text2 position-left" ></i>Employee Information.</legend>
                 <div class="form-group row">
     <div class="col-xs-2 col-sm-1 col-lg-3"  runat="server">
         <div class="form-group">Employee Code
             <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                 <ContentTemplate>
                     <asp:TextBox ID="EmployeeCode" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator21" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="EmployeeCode" ErrorMessage="Code is Mandatory"></asp:RequiredFieldValidator>

                 </ContentTemplate>
             </asp:UpdatePanel>
                              </div>
                             </div>

                                 <div class="col-xs-2 col-sm-1 col-lg-3">
                                         <div class="form-group">
                        First Name
                                <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                    <ContentTemplate>
                                        <asp:textbox ID="FirstName" CssClass="form-control" runat="server" ></asp:textbox>
                                        <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator5" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="FirstName" ErrorMessage="Name is Mandatory"></asp:RequiredFieldValidator>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                    </div></div>

                              <div class="col-xs-2 col-sm-1 col-lg-3">
                                      <div class="form-group">
                                      Middle Name
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <asp:textbox ID="MiddleName" CssClass="form-control" runat="server" ></asp:textbox>
                                        <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator1" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="MiddleName" ErrorMessage="Name is Mandatory"></asp:RequiredFieldValidator>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                    </div></div>
                   <div class="col-xs-2 col-sm-1 col-lg-3">
                     <div class="form-group">
                        Last Name
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                       <ContentTemplate>
                        <asp:textbox ID="LastName" CssClass="form-control" runat="server" ></asp:textbox>
                         <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator2" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="LastName" ErrorMessage="Name is Mandatory"></asp:RequiredFieldValidator>
                       </ContentTemplate>
                    </asp:UpdatePanel>
                    </div></div>
 <div class="col-xs-2 col-sm-1 col-lg-3">
   <div class="form-group">
      Email Address
  <asp:UpdatePanel ID="UpdatePanel5" runat="server">
     <ContentTemplate>
      <asp:textbox ID="EmailAddress" TextMode="Email" CssClass="form-control" runat="server"></asp:textbox>
       <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator3" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="EmailAddress" ErrorMessage="Email is Mandatory"></asp:RequiredFieldValidator>
     </ContentTemplate>
  </asp:UpdatePanel>
         </div></div>
<div class="col-xs-2 col-sm-1 col-lg-3">
  <div class="form-group">
     Nick Name
 <asp:UpdatePanel ID="UpdatePanel4" runat="server">
    <ContentTemplate>
     <asp:textbox ID="NickName" CssClass="form-control" runat="server" ></asp:textbox>
      <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator4" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="NickName" ErrorMessage="Name is Mandatory"></asp:RequiredFieldValidator>
    </ContentTemplate>
 </asp:UpdatePanel>
         </div></div>
<div class="col-xs-2 col-sm-1 col-lg-3">
  <div class="form-group">
     Gender
 <asp:UpdatePanel ID="UpdatePanel6" runat="server">
    <ContentTemplate>
     <asp:dropdownlist ID="Gender"  CssClass="form-control" runat="server" ></asp:dropdownlist>
<%--      <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator6" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="Gender" ErrorMessage="Please Select Gender"></asp:RequiredFieldValidator>--%>
    </ContentTemplate>
 </asp:UpdatePanel>

               </div></div>
<div class="col-xs-2 col-sm-1 col-lg-3">
  <div class="form-group">
     Department
 <asp:UpdatePanel ID="UpdatePanel7" runat="server">
    <ContentTemplate>
     <asp:dropdownlist ID="Department" CssClass="form-control" runat="server"></asp:dropdownlist>
<%--      <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator7" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="Department" ErrorMessage="Please select Department"></asp:RequiredFieldValidator>--%>
    </ContentTemplate>
 </asp:UpdatePanel>

                     </div></div>
<div class="col-xs-2 col-sm-1 col-lg-3">
  <div class="form-group">
     Reporting To
 <asp:UpdatePanel ID="UpdatePanel9" runat="server">
    <ContentTemplate>
     <asp:dropdownlist ID="ReportingTo"  CssClass="form-control" runat="server"></asp:dropdownlist>
<%--      <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator8" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="ReportingTo" ErrorMessage="Please Select An Option"></asp:RequiredFieldValidator>--%>
    </ContentTemplate>
 </asp:UpdatePanel>

                           </div></div>
<div class="col-xs-2 col-sm-1 col-lg-3">
  <div class="form-group">
     Hiring Source
 <asp:UpdatePanel ID="UpdatePanel10" runat="server">
    <ContentTemplate>
     <asp:dropdownlist ID="HiringSource"  CssClass="form-control" runat="server" ></asp:dropdownlist>
<%--      <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator9" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="HiringSource" ErrorMessage="Department is Mandatory"></asp:RequiredFieldValidator>--%>
    </ContentTemplate>
 </asp:UpdatePanel>

                                 </div></div>
<div class="col-xs-2 col-sm-1 col-lg-3">
  <div class="form-group">
     Grade
 <asp:UpdatePanel ID="UpdatePanel11" runat="server">
    <ContentTemplate>
     <asp:dropdownlist ID="Grade"  CssClass="form-control" runat="server" ></asp:dropdownlist>
<%--      <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator10" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="Grade" ErrorMessage="Department is Mandatory"></asp:RequiredFieldValidator>--%>
    </ContentTemplate>
 </asp:UpdatePanel>


                                       </div></div>
<div class="col-xs-2 col-sm-1 col-lg-3">
  <div class="form-group">
     Designation
 <asp:UpdatePanel ID="UpdatePanel12" runat="server">
    <ContentTemplate>
     <asp:dropdownlist ID="Designation"  CssClass="form-control" runat="server" ></asp:dropdownlist>
<%--      <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator11" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="Designation" ErrorMessage="Department is Mandatory"></asp:RequiredFieldValidator>--%>
    </ContentTemplate>
 </asp:UpdatePanel>
                                             </div></div>
<div class="col-xs-2 col-sm-1 col-lg-3">
  <div class="form-group">
     Employee Status
 <asp:UpdatePanel ID="UpdatePanel13" runat="server">
    <ContentTemplate>
     <asp:dropdownlist ID="EmployeeStatus"  CssClass="form-control" runat="server"></asp:dropdownlist>
<%--      <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator12" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="EmployeeStatus" ErrorMessage="Department is Mandatory"></asp:RequiredFieldValidator>--%>
    </ContentTemplate>
 </asp:UpdatePanel>

                                                   </div></div>
<div class="col-xs-2 col-sm-1 col-lg-3">
  <div class="form-group">
     Employee Type
 <asp:UpdatePanel ID="UpdatePanel14" runat="server">
    <ContentTemplate>
     <asp:dropdownlist ID="EmployeeType"  CssClass="form-control" runat="server"></asp:dropdownlist>
<%--      <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator13" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="EmployeeType" ErrorMessage="Department is Mandatory"></asp:RequiredFieldValidator>--%>
    </ContentTemplate>
 </asp:UpdatePanel>
      </div></div>
      <div class="col-xs-2 col-sm-1 col-lg-3">
  <div class="form-group">
    Date Of Hire
 <asp:UpdatePanel ID="UpdatePanel15" runat="server">
    <ContentTemplate>
                    <asp:textbox ID="DateOfHire" TextMode="Date"  CssClass="form-control" runat="server" ></asp:textbox>
                                    <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator17" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="DateOfHire" ErrorMessage="Date Of Hire is Mandatory"></asp:RequiredFieldValidator>

    </ContentTemplate>
 </asp:UpdatePanel>
            </div></div>
      <div class="col-xs-2 col-sm-1 col-lg-3">
  <div class="form-group">
    Date Of Birth
 <asp:UpdatePanel ID="UpdatePanel16" runat="server">
    <ContentTemplate>
                    <asp:textbox ID="DateOfBirth" TextMode="Date"  CssClass="form-control" runat="server" ></asp:textbox>
                            <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator16" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="DateOfBirth" ErrorMessage="Date Of Birth Is Mandatory"></asp:RequiredFieldValidator>

    </ContentTemplate>
 </asp:UpdatePanel>
      </div></div>


    <div class="col-xs-2 col-sm-1 col-lg-3">
     <div class="form-group">
           Work Phone
            <asp:UpdatePanel ID="UpdatePanel17" runat="server">
                <ContentTemplate>
                    <asp:textbox ID="WorkPhone" TextMode="Number"  CssClass="form-control" runat="server" ></asp:textbox>
                    <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator14" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="WorkPhone" ErrorMessage="number is Mandatory"></asp:RequiredFieldValidator>
                </ContentTemplate>
            </asp:UpdatePanel>

               </div></div>


                                  <div class="col-xs-2 col-sm-1 col-lg-3">
     <div class="form-group">
   Work Phone EXT
            <asp:UpdatePanel ID="UpdatePanel18" runat="server">
                <ContentTemplate>
                    <asp:textbox ID="WorkPhoneExt" TextMode="Number"  CssClass="form-control" runat="server" MaxLength="10"></asp:textbox>
                    <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator15" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="WorkPhoneExt" ErrorMessage="number is Mandatory"></asp:RequiredFieldValidator>
                </ContentTemplate>
            </asp:UpdatePanel>

                        </div></div>


                                  <div class="col-xs-2 col-sm-1 col-lg-3">
     <div class="form-group">
   Home Phone 
            <asp:UpdatePanel ID="UpdatePanel19" runat="server">
                <ContentTemplate>
                    <asp:textbox ID="HomePhone" TextMode="Number"  CssClass="form-control" runat="server" MaxLength="10"></asp:textbox>
                    <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator18" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="HomePhone" ErrorMessage="number is Mandatory"></asp:RequiredFieldValidator>
                </ContentTemplate>
            </asp:UpdatePanel>

                                 </div></div>


                   <div class="col-xs-2 col-sm-1 col-lg-3">
                  <div class="form-group">
                Mobile Phone 
            <asp:UpdatePanel ID="UpdatePanel20" runat="server">
                <ContentTemplate>
                    <asp:textbox ID="MobilePhone" TextMode="Number"  CssClass="form-control" runat="server" MaxLength="10"></asp:textbox>
                    <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator19" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="MobilePhone" ErrorMessage="number is Mandatory"></asp:RequiredFieldValidator>
                </ContentTemplate>
            </asp:UpdatePanel>
                                          </div></div>


                                  <div class="col-xs-2 col-sm-1 col-lg-3">
     <div class="form-group">
   Marrital Status
            <asp:UpdatePanel ID="UpdatePanel21" runat="server">
                <ContentTemplate>
                    <asp:textbox ID="MarritalStatus"   CssClass="form-control" runat="server" ></asp:textbox>
                    <asp:RequiredFieldValidator ValidationGroup="EmployeeDetails" ID="RequiredFieldValidator20" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="MarritalStatus" ErrorMessage="Select Marrital Status"></asp:RequiredFieldValidator>
                </ContentTemplate>
            </asp:UpdatePanel>
             </div>
</div></div> <div class="form-group row">
     <div class="col-lg-12">
         <asp:Label ID="lblMessage" runat="server" CssClass="label label-danger"></asp:Label>
     </div>

 </div>
    
                <ContentTemplate>
                            <asp:Button ID="btnSubmit" ValidationGroup="EmployeeDetails" class="btn btn-primary  " runat="server" Text="Submit" />

                </ContentTemplate>

         
     </div>
  </div></div></div>
