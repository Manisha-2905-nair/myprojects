Imports System.Net.Mail

Partial Class DUmmy_EmployeeDetailsTest
    Inherits System.Web.UI.UserControl
    Dim iDummy As Integer = 0
    Dim iActionID As Integer = 0
    Dim objUser As New UserBLL
    Private objListData As Object
    Private objlist As Object

    Private Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If IsNumeric(Request.QueryString("ID")) Then iDummy = Request.QueryString("ID")
            If Not IsPostBack Then
                If iDummy > 0 Then
                    Using objList As New EFL.Dummy.EmployeeDetailsTestFormEntities

                        For Each objListData In objList.Employee_Details_List_RetrieveDetails(iDummy)



                            EmployeeCode.Text = objListData.
                            EmployeeName.Text = objListData.EMPNAME
                            cboDepartment.Text = objListData.DEPARTMENT
                            WorkOrder.Text = objListData.WorkOrder
                            DocumentClassification.Text = objListData.DOCUMENT_CLASSIFICATION
                            Version.Text = objListData.VERSION
                            PopulateDepartment()
                        Next

                    End Using
                End If




            End If
        Catch ex As Exception
            SharedBLL.LogError(objUser.FetchGroupID, objUser.FetchBranchID, objUser.FetchUserID, objUser.FetchPortalID, Request.Url.AbsoluteUri, ex.InnerException.Message, ex.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())
        End Try
    End Sub
    Sub PopulateDepartment()
        Try
            Using objMasterHR As New EFL.Masters.MasterEntities
                cboDepartment.DataSource = objMasterHR.MultiList_Management_Reports_PopulateList("MASTERS_DEPARTMENT_LIST").ToList()
                cboDepartment.DataValueField = ""
                cboDepartment.DataTextField = "NAME"
                cboDepartment.DataBind()
                cboDepartment.Items.Insert(0, New ListItem("Choose an Option", -1))
            End Using


        Catch ex As Exception
            SharedBLL.LogError(SharedBLL.iGroupID, SharedBLL.iBranchID, objUser.FetchUserID, SharedBLL.iPortallID, HttpContext.Current.Request.Url.AbsoluteUri, ex.Message, ex.InnerException.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())
            'Call oErrorLog.LogError(objUser.FetchGroupID, objUser.FetchBranchID, HttpContext.Current.Session("USER_ID"), HttpContext.Current.Session("PORTAL_ID"), "EmployeeList.ascx:PopulateDepartment", ex.StackTrace, ex.Message, HttpContext.Current.Request.ServerVariables("SCRIPT_NAME"))

        End Try
    End Sub
    Sub PopulateWorkOrder()
        Try
            Using objlist As New EFL.Dummy.EmployeeDetailsTestFormEntities
                cboDepartment.DataSource = objlist.Department_PopulateList("DOCKET_BARCODE_SERIAL").ToList()
                cboDepartment.DataValueField = "DOCKET_BARCODE_SERIAL"
                cboDepartment.DataTextField = "WORKORDER"
                cboDepartment.DataBind()
                cboDepartment.Items.Insert(0, New ListItem("Choose an Option", -1))
            End Using


        Catch ex As Exception
            SharedBLL.LogError(SharedBLL.iGroupID, SharedBLL.iBranchID, objUser.FetchUserID, SharedBLL.iPortallID, HttpContext.Current.Request.Url.AbsoluteUri, ex.Message, ex.InnerException.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())

        End Try
    End Sub
    'Private Sub PopulateWorkOrderList()

    'End Sub
    'Private Sub PopulateDocumentClassificationList()

    'End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Try
            If iDummy > 0 Then
                Using objlist As New EFL.Dummy.Employee_Details_List_RetrieveDetails
                    For Each objListData In objlist.Employee_Details_List_RetrieveDetails(iDummy).ToList()

                        If Not cboDepartment.Items.FindByValue(objListData.DEPARTMENT) Is Nothing Then cboDepartment.SelectedValue = objListData.DEPARTMENT

                    Next
                End Using
            End If

            'Check for the duplication.
            Using objlist As New EFL.Dummy.EmployeeDetailsTestFormEntities
                Dim iDuplicateID As Integer = objlist.Employee_Details_List_CheckDuplicateInfo(EmployeeCode.Text.Trim).LastOrDefault()

                If iDummy > 0 Then

                    If iDuplicateID > 0 Then
                        If iDuplicateID = iDummy Then


                            objlist.Employee_Details_List_Actions_AmendInfo(EmployeeCode.Text.Trim, EmployeeName.Text.Trim, cboDepartment.SelectedValue, WorkOrder.Text.Trim, DocumentClassification.Text.Trim, Version.Text.Trim, iDummy)

                            Response.Redirect("EmployeeDetailsListView.aspx", False)

                        Else
                            lblMessage.Text = "Employee already Exists."
                        End If
                    Else
                        objlist.Employee_Details_List_Actions_AmendInfo(EmployeeCode.Text.Trim, EmployeeName.Text.Trim, cboDepartment.Text.Trim, WorkOrder.Text.Trim, DocumentClassification.Text.Trim, Version.Text.Trim, iDummy)


                        Response.Redirect("EmployeeDetailsListView.aspx", False)

                    End If
                Else
                    If iDuplicateID = 0 Then


                        iDummy = objlist.Employee_Details_List_Actions_PostInfo(EmployeeCode.Text.Trim, EmployeeName.Text.Trim, cboDepartment.SelectedValue, WorkOrder.Text.Trim, DocumentClassification.Text.Trim, Version.Text.Trim).LastOrDefault()

                        Response.Redirect("EmployeeDetailsListView.aspx", False)
                    Else
                        lblMessage.Text = "Employee already Exists."
                    End If

                    Response.Write("submitted successfully")
                    Response.Redirect("EmployeeDetailsListView.aspx", False)
                End If
            End Using
        Catch ex As Exception
            SharedBLL.LogError(objUser.FetchGroupID, objUser.FetchBranchID, objUser.FetchUserID, objUser.FetchPortalID, Request.Url.AbsoluteUri, ex.InnerException.Message, ex.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())

        End Try
    End Sub

End Class

