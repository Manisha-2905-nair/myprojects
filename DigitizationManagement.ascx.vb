Imports System.Data.Entity
Imports System.Net.Mail

Partial Class Digitization_DigitizationManagement
    Inherits System.Web.UI.UserControl
    Dim iBarcode As Integer = 0
    Dim iActionID As Integer = 0
    Dim objUser As New UserBLL



    Private Sub DigitizationRequisitionManagement_DigitizationManagement_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If IsNumeric(Request.QueryString("ID")) Then iBarcode = Request.QueryString("ID")
            If Not IsPostBack Then
                If iBarcode > 0 Then
                    Using objList As New EFL.Dummy.DigitizationManagementTestEntities

                        For Each objListData In objList.Digitization_Requisition_Management_RetrieveDetails(iBarcode)

                            Department.Text = objListData.DEPARTMENT
                            SubDepartment.Text = objListData.SUB_DEPARTMENT
                            SubLevel.Text = objListData.SUBLEVEL
                            DocumentClass.Text = objListData.DOCUMENT_CLASS
                            Title.Text = objListData.TITLE
                            VersionType.Text = objListData.VERSION_TYPE
                            Barcode.Text = objListData.DOCKET_BARCODE_SERIAL
                            Reference.Text = objListData.DOCUMENT_REFERENCE
                            Version.Text = objListData.VERSION
                            DocumentClassification.Text = objListData.DOCUMENT_CLASSIFICATION
                            Sensitivity.Text = objListData.SENSITIVITY
                            Remarks.Text = objListData.REMARKS


                        Next
                    End Using
                End If
            End If

        Catch ex As Exception
            SharedBLL.LogError(objUser.FetchGroupID, objUser.FetchBranchID, objUser.FetchUserID, objUser.FetchPortalID, Request.Url.AbsoluteUri, ex.InnerException.Message, ex.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())
        End Try
    End Sub
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Try

            'Check for the duplication.
            Using objlist As New EFL.Dummy.DigitizationManagementTestEntities
                Dim iDuplicateID As Integer = objlist.Digitization_Requisition_Management_CheckDuplicateInfo(Barcode.Text.Trim, Reference.Text.Trim).LastOrDefault()

                If iBarcode > 0 Then

                    If iDuplicateID > 0 Then
                        If iDuplicateID = iBarcode Then
                            objlist.Digitization_Requisition_Management_AmendInfo(iBarcode, Department.Text.Trim, SubDepartment.Text.Trim, SubLevel.Text.Trim, DocumentClass.Text.Trim, Title.Text.Trim, VersionType.Text.Trim, Barcode.Text.Trim, Reference.Text.Trim, Version.Text.Trim, DocumentClassification.Text.Trim, Sensitivity.Text.Trim, Remarks.Text.Trim)

                            Response.Redirect("DigitizationList.aspx", False)

                        Else
                            lblMessage.Text = "Document already Exists."
                        End If
                    Else
                        objlist.Digitization_Requisition_Management_AmendInfo(iBarcode, Department.Text.Trim, SubDepartment.Text.Trim, SubLevel.Text.Trim, DocumentClass.Text.Trim, Title.Text.Trim, VersionType.Text.Trim, Barcode.Text.Trim, Reference.Text.Trim, Version.Text.Trim, DocumentClassification.Text.Trim, Sensitivity.Text.Trim, Remarks.Text.Trim)


                        Response.Redirect("DigitizationList.aspx", False)

                    End If
                Else
                    If iDuplicateID = 0 Then
                        iBarcode = objlist.Digitization_Requisition_Management_PostInfo(Department.Text.Trim, SubDepartment.Text.Trim, SubLevel.Text.Trim, DocumentClass.Text.Trim, Title.Text.Trim, VersionType.Text.Trim, Barcode.Text.Trim, Reference.Text.Trim, Version.Text.Trim, DocumentClassification.Text.Trim, Sensitivity.Text.Trim, Remarks.Text.Trim).LastOrDefault()

                        Response.Redirect("DigitizationList.aspx", False)
                    Else
                        lblMessage.Text = "Document already Exists."
                    End If

                End If
            End Using


        Catch ex As Exception
            SharedBLL.LogError(objUser.FetchGroupID, objUser.FetchBranchID, objUser.FetchUserID, objUser.FetchPortalID, Request.Url.AbsoluteUri, ex.InnerException.Message, ex.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())

        End Try
        Department.Text = String.Empty
        SubDepartment.Text = String.Empty
        SubLevel.Text = String.Empty
        DocumentClass.Text = String.Empty
        Title.Text = String.Empty
        VersionType.Text = String.Empty
        Barcode.Text = String.Empty
        Reference.Text = String.Empty
        Version.Text = String.Empty
        DocumentClassification.Text = String.Empty
        Sensitivity.Text = String.Empty
    End Sub

End Class