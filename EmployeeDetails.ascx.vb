Imports System.Data.Entity

Partial Class DUmmy_EmployeeDetails
    Inherits System.Web.UI.UserControl
    Dim iEmployeeID As Integer = 0
    Dim iActionID As Integer = 0
    Dim objUser As New UserBLL



    Private Sub DUmmy_EmployeeDetails_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If IsNumeric(Request.QueryString("ID")) Then iEmployeeID = Request.QueryString("ID")
            If Not IsPostBack Then
                If iEmployeeID > 0 Then
                    Using objList As New EFL.Dummy.EmployeeTestEntities

                        For Each objListData In objList.Employee_Details_RetrieveDetails(iEmployeeID)

                            EmployeeCode.Text = objListData.EMPLOYEE_CODE
                            FirstName.Text = objListData.FIRSTNAME
                            MiddleName.Text = objListData.MIDDLENAME
                            LastName.Text = objListData.LASTNAME
                            EmailAddress.Text = objListData.EMAIL_ADDRESS
                            NickName.Text = objListData.NICKNAME
                            Gender.Text = objListData.GENDER
                            Department.Text = objListData.DEPARTMENT
                            ReportingTo.Text = objListData.REPORTING_TO
                            HiringSource.Text = objListData.HIRING_SOURCE
                            Grade.Text = objListData.GRADE
                            Designation.Text = objListData.DESIGNATION
                            EmployeeStatus.Text = objListData.EMPLOYEE_STATUS
                            EmployeeType.Text = objListData.EMPLOYEE_TYPE
                            DateOfHire.Text = objListData.DATE_OF_HIRE.ToString("yyyy-MM-dd")
                            DateOfBirth.Text = objListData.DATE_OF_BIRTH.ToString("yyyy-MM-dd")
                            WorkPhone.Text = objListData.WORK_PHONE
                            WorkPhoneExt.Text = objListData.WORK_PHONE_EXT
                            HomePhone.Text = objListData.HOME_PHONE
                            MobilePhone.Text = objListData.MOBILE_PHONE
                            MarritalStatus.Text = objListData.MARRITAL_STATUS

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
            Using objlist As New EFL.Dummy.EmployeeTestEntities
                Dim iDuplicateID As Integer = objlist.Employee_Details_CheckDuplicateInfo(EmployeeCode.Text.Trim, EmailAddress.Text.Trim).LastOrDefault()

                If iEmployeeID > 0 Then

                    If iDuplicateID > 0 Then
                        If iDuplicateID = iEmployeeID Then
                            objlist.Employee_Details_Actions_AmendInfo(EmployeeCode.Text.Trim, FirstName.Text.Trim, MiddleName.Text.Trim, LastName.Text.Trim, EmailAddress.Text.Trim, NickName.Text.Trim, "1", "1", "1", "1", "1", "1", "1", "1", DateOfHire.Text.Trim, DateOfBirth.Text.Trim, WorkPhone.Text.Trim, WorkPhoneExt.Text.Trim, HomePhone.Text.Trim, MobilePhone.Text.Trim, MarritalStatus.Text.Trim, iEmployeeID)

                            Response.Redirect("EmployeeListTest.aspx", False)

                        Else
                            lblMessage.Text = "Employee already Exists."
                        End If
                    Else
                        objlist.Employee_Details_Actions_AmendInfo(EmployeeCode.Text.Trim, FirstName.Text.Trim, MiddleName.Text.Trim, LastName.Text.Trim, EmailAddress.Text.Trim, NickName.Text.Trim, "1", "1", "1", "1", "1", "1", "1", "1", DateOfHire.Text.Trim, DateOfBirth.Text.Trim, WorkPhone.Text.Trim, WorkPhoneExt.Text.Trim, HomePhone.Text.Trim, MobilePhone.Text.Trim, MarritalStatus.Text.Trim, iEmployeeID)


                        Response.Redirect("EmployeeListTest.aspx", False)

                    End If
                Else
                    If iDuplicateID = 0 Then
                        iEmployeeID = objlist.Employee_Details_Actions_PostInfo(EmployeeCode.Text.Trim, FirstName.Text.Trim, MiddleName.Text.Trim, LastName.Text.Trim, EmailAddress.Text.Trim, NickName.Text.Trim, "1", "1", "1", "1", "1", "1", "1", "1", DateOfHire.Text.Trim, DateOfBirth.Text.Trim, WorkPhone.Text.Trim, WorkPhoneExt.Text.Trim, HomePhone.Text.Trim, MobilePhone.Text.Trim, MarritalStatus.Text.Trim).LastOrDefault()

                        Response.Redirect("EmployeeListTest.aspx", False)
                    Else
                        lblMessage.Text = "Employee already Exists."
                    End If

                End If
            End Using


        Catch ex As Exception
            SharedBLL.LogError(objUser.FetchGroupID, objUser.FetchBranchID, objUser.FetchUserID, objUser.FetchPortalID, Request.Url.AbsoluteUri, ex.InnerException.Message, ex.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())

        End Try
    End Sub
    'Protected Sub btnSubmit_Click1(sender As Object, e As EventArgs) Handles btnSubmit.Click
    '    Try
    '        Dim objlist As New EFL.Dummy.EmployeeTestEntities
    '        Dim iDuplicateID As String = objlist.Employee_Details_CheckDuplicateInfo(EmployeeCode.Text.Trim, EmailAddress.Text.Trim).LastOrDefault()

    '        If iEmployeeID > 0 Then 'Amend process
    '            If (iEmployeeID = iDuplicateID) Then
    '                objlist.Employee_Details_Actions_AmendInfo(EmployeeCode.Text.Trim, FirstName.Text.Trim, MiddleName.Text.Trim, LastName.Text.Trim, EmailAddress.Text.Trim, NickName.Text.Trim, "1", "1", "1", "1", "1", "1", "1", "1", "11/11/2023", "06/07/2023", WorkPhone.Text.Trim, WorkPhoneExt.Text.Trim, HomePhone.Text.Trim, MobilePhone.Text.Trim, MarritalStatus.Text.Trim, iEmployeeID)

    '                Response.Redirect("EmployeeListTest.aspx", False)
    '            Else
    '                lblMessage.Text = "Duplicate entry found."
    '            End If
    '        Else 'Add a new record
    '            If iDuplicateID > 0 Then
    '                lblMessage.Text = "Duplicate entry found."
    '            Else


    '                objlist.Employee_Details_Actions_PostInfo(EmployeeCode.Text.Trim, FirstName.Text.Trim, MiddleName.Text.Trim, LastName.Text.Trim, EmailAddress.Text.Trim, NickName.Text.Trim, "1", "1", "1", "1", "1", "1", "1", "1", "11/11/2023", "06/07/2023", WorkPhone.Text.Trim, WorkPhoneExt.Text.Trim, HomePhone.Text.Trim, MobilePhone.Text.Trim, MarritalStatus.Text.Trim).LastOrDefault()
    '                Response.Redirect("EmployeeListTest.aspx", False)
    '            End If
    '        End If


    'Catch ex As Exception
    '        SharedBLL.LogError(objUser.FetchGroupID, objUser.FetchBranchID, objUser.FetchUserID, objUser.FetchPortalID, Request.Url.AbsoluteUri, ex.InnerException.Message, ex.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())
    '        Response.Write(ex.Message)
    '        Response.End()

    '    End Try
    'End Sub
End Class

