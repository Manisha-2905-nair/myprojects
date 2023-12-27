<%@ Control Language="VB" AutoEventWireup="false" CodeFile="EmployeeListTest.ascx.vb" Inherits="DUmmy_EmployeeListTest" %>
<div class="row">

    <div class="col-xs-8 col-sm-6 col-lg-12">

        <div class="panel panel-flat">
            <class>
                <style>
                    h1 {
                        text-align: left;
                    }
                </style>
                <h1>Employee Details</h1>
            </class>

            <div class="row">
                <div class="col-lg-2">
                </div>

            </div>

            <div class="panel-body">

                <div class="row">
                    <div class="form-group">
                        <div class="col-lg-10">

                            <legend class="text-bold"><i class="icon-file-text2 position-left"></i>Employee Details</legend>
                        </div>
                        <div class="col-lg-1">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
        <asp:Button ID="btnSubmit" BackColor="#0099ff" ValidationGroup="EmployeeListTest" class="btn btn-primary  " runat="server" Text="Add New Entry" />
            </ContentTemplate>
</asp:UpdatePanel>
                        </div>
                    </div>
                </div>

                <div class="row">

                    <div class="col-xs-8 col-sm-6 col-lg-12">
                        <div class="form-group">

                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>


                                    <table class="table datatable-responsive">
                                        <thead>
                                            <tr>
                                                
                                                <th>Employee Code</th>
                                                <th>Employee Name</th>
                                                <th>Email Address</th>
                                                <th>Designation </th>
                                                <th>Employee Status</th>
                                                <th>Home Phone</th>
                                                <th>Mobile Phone</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <div id="divRows" runat="server"></div>
                                        </tbody>
                                    </table>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
