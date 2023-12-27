<%@ Control Language="VB" AutoEventWireup="false" CodeFile="EmployeeDetailsTest.ascx.vb" Inherits="DUmmy_EmployeeDetailsTest" %>
<div class="row">
    <div class="panel panel-flat">


        <div class="panel-body">
            <header>
                <style>
                    h1 {
                        font-size: 25px;
                    }
                </style>
            </header>
            <h1>Employee Details Form</h1>
            <div class="row">
                <div class="form-group">
                    <div class="col-lg-3">

                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                            <ContentTemplate>
                                Employee Code
                                 <asp:TextBox ID="EmployeeCode"  class="editable" CssClass="form-control" runat="server" ></asp:TextBox>
                                <asp:RequiredFieldValidator ValidationGroup="EmployeeDetailsTest" ID="RequiredFieldValidator3" runat="server" Display="Dynamic" CssClass="label label-danger" ControlToValidate="EmployeeCode" ErrorMessage="select Employee Code"></asp:RequiredFieldValidator>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="col-lg-3">
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                            <ContentTemplate>
                                Employee Name
                                 <asp:TextBox ID="EmployeeName" CssClass="form-control" runat="server" ></asp:TextBox>
                                <asp:RequiredFieldValidator ValidationGroup="EmployeeDetailsTest" ID="RequiredFieldValidator4" runat="server" Display="Dynamic" CssClass="label label-danger" ControlToValidate="EmployeeName" ErrorMessage="select Employee Name"></asp:RequiredFieldValidator>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="col-lg-3">
                       
                                Department
                    
         <asp:DropDownList ID="cboDepartment" CssClass="form-control" runat="server" >
             <asp:ListItem  >Information Technology</asp:ListItem>
             <asp:ListItem  >R&D</asp:ListItem>
             <asp:ListItem  >Engineering</asp:ListItem>
         </asp:DropDownList>
         <asp:RequiredFieldValidator ValidationGroup="EmployeeDetailsTest" ID="RequiredFieldValidator6" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="cboDepartment" ErrorMessage="please select department"></asp:RequiredFieldValidator>
              
                               
                    </div>

                </div>

            </div>
            <div class="row">
                <div class="form-group">
                    <div class="col-lg-3">
                        
                                Work Order
                           <asp:DropDownList ID="WorkOrder" CssClass="form-control"  runat="server">
                             <asp:ListItem Value="">Choose an option</asp:ListItem>
                                 <asp:ListItem  > 0000</asp:ListItem>
                                 <asp:ListItem >11111</asp:ListItem>
                                 <asp:ListItem >2222</asp:ListItem>
                               </asp:DropDownList>
                                <asp:RequiredFieldValidator ValidationGroup="EmployeeDetailsTest" ID="RequiredFieldValidator5" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="WorkOrder" ErrorMessage="please select workorder"></asp:RequiredFieldValidator>
                            
                    </div>

                    <div class="col-lg-3">
                       
                                Document Classification
                           <asp:DropDownList ID="DocumentClassification"  CssClass="form-control" runat="server">
                               <asp:ListItem Value="">Choose an option</asp:ListItem>
                               <asp:ListItem  >1212</asp:ListItem>
                               <asp:ListItem  >010101</asp:ListItem>
                               <asp:ListItem   >2222</asp:ListItem>
                           </asp:DropDownList>
                                
                  <asp:RequiredFieldValidator ValidationGroup="EmployeeDetailsTest" ID="RequiredFieldValidator1" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="DocumentClassification" ErrorMessage="please select DocumentClassification"></asp:RequiredFieldValidator>
                           
                    </div>
                    <div class="col-lg-3">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                Version
                        <asp:DropDownList ID="Version" CssClass="form-control" runat="server">
                          <asp:ListItem Value="">Choose an option</asp:ListItem>
                            <asp:ListItem  > 000</asp:ListItem>
                            <asp:ListItem   >1210</asp:ListItem>
                            <asp:ListItem   >234</asp:ListItem>
                        </asp:DropDownList>
                   <asp:RequiredFieldValidator ValidationGroup="EmployeeDetailsTest" ID="RequiredFieldValidator2" runat="server" Display="Dynamic" CssClass="label label-danger"  ControlToValidate="Version" ErrorMessage="please select Version"></asp:RequiredFieldValidator>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group ">
                    <div class="col-lg-3">
                        <asp:Label ID="lblMessage" runat="server" CssClass="label label-danger"></asp:Label>
                    </div>

                    <div class="col-lg-3">
                        <contenttemplate>
                            <asp:Button ID="btnSubmit" ValidationGroup="EmployeeDetailsTest" class="btn btn-primary  " runat="server" Text="Submit The Requisition" />
                        </contenttemplate>

                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
