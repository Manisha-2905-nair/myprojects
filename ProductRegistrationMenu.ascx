<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ProductRegistrationMenu.ascx.vb" Inherits="DUmmy_ProductRegistrationMenu" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Src="ProductRegistrationManagement.ascx" TagName="ProductRegistrationManagement" TagPrefix="uc1" %>
<%@ Register Src="ProductRegistrationEntryForm.ascx" TagName="ProductRegistrationEntryForm" TagPrefix="uc2" %>
<%@ Register Src="DigitizationManagement.ascx" TagName="DigitizationManagement" TagPrefix="uc3" %>


<div class="row">
    <div class="col-md-12">
        <div class="panel panel-flat">
            <div class="panel-heading">
                <h6 class="panel-title"><strong>Product Registration List</strong></h6>

            </div>

            <div class="panel-body">
                <div class="tabbable">
                    <ul class="nav nav-tabs nav-tabs-solid nav-tabs-component" id="Tabs">

                        <li class="active"><a href="#AddNewEntry" id="tab1" data-toggle="tab">Add New Entry</a></li>
                        <li><a href="#Submit" id="tab2" data-toggle="tab">Update</a></li>
                         <li><a href="#Digitization" id="tab3" data-toggle="tab">Digitization</a></li>
                    </ul>
                     <div class="tab-content">
      <div class="tab-pane active" id="ProductRegistration">
          <uc1:ProductRegistrationManagement ID="ProductRegistrationManagement1" runat="server" />
      </div>
      <div class="tab-pane active" id="ProductRegistrationEntryForm">
          <uc2:ProductRegistrationEntryForm ID="ProductRegistrationEntryForm1" runat="server" />
      </div>
                  <div class="tab-pane active" id="DigitizationManagement">
          <uc3:DigitizationManagement ID="DigitizationManagement1" runat="server" />
      </div></div></div>

                    <div class="tab-content">
                        <div class="tab-pane active" id="AddNewEntry">
                            <div class="panel panel-flat">
                                <div class="panel-body">

                                    <div class="row">
                                        <div class="col-sm-12" style="overflow-x: scroll">
                                            <table class="table tblfilter-enable datatable-responsive">
                                                <thead>
                                                    <tr>
                                                        <th>Regulatory Agency</th>
                                                        <th>Customer Name</th>
                                                        <th>Country Drug Code Format</th>
                                                        <th>Product Classification</th>
                                                        <th>Product Status</th>                                                       
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="divList1" runat="server">
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="Submit">
                            <div class="panel panel-flat">
                                <div class="panel-body">

                                    <div class="row">
                                        <div class="col-sm-12" style="overflow-x: scroll">
                                            <table class="table tblfilter-enable datatable-responsive">
                                                <thead>
                                                    <tr>
                                                        <th>Regulatory Agency</th>
                                                        <th>Customer Name</th>                                                                                              
                                                        <th>Item Reference Number</th>
                                                        <th>Product Classification</th>                                              
                                                        <th>Product Status</th>
                                                        <th>User Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="divList2" runat="server">
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                             <div class="tab-pane" id="Digitization">
                                <div class="panel panel-flat">
                                   <div class="panel-body">
                                    <div class="row">
                                       <div class="col-sm-12" style="overflow-x: scroll">
                                     <table class="table tblfilter-enable datatable-responsive">
                                     <thead>
                                    <tr>
                                       <th>Work Order#</th>
                                       <th>Document Title</th>
                                       <th>Document Ref No</th>
                                       <th>Department </th>
                                       <th>Sub Department</th>
                                       <th>Document Classification</th>
                                       <th>Document Class</th>
                                       <th>Version #</th>
                                       <th>User Actions</th>
                                  </tr>
                            </thead>
                            <tbody id="divList3" runat="server">
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
                     </div>
                </div>
            </div>
        </div>
    </div>
