
Partial Class DUmmy_EmployeeListTest
    Inherits System.Web.UI.UserControl

    Dim objUser As New UserBLL
    Dim iOptionID As Integer = 0
    Dim iDuumyID As String = String.Empty



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try

            If IsNumeric(Request.QueryString("ID")) Then iDuumyID = Request.QueryString("ID")
            If IsNumeric(Request.QueryString("OptionID")) Then iOptionID = Request.QueryString("OptionID")
            If Not IsNumeric(iDuumyID) Then
                iDuumyID = 0
            End If
            If Not IsPostBack Then

                ShowTasksList()
            End If

        Catch ex As Exception
            SharedBLL.LogError(objUser.FetchGroupID, objUser.FetchBranchID, objUser.FetchUserID, objUser.FetchPortalID, Request.Url.AbsoluteUri, ex.InnerException.Message, ex.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())

        End Try
    End Sub

    Protected Sub BtnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Try
            Response.Redirect("EmployeeDetails.aspx?TL=1&ID=" & iDuumyID, False)
        Catch ex As Exception
            SharedBLL.LogError(objUser.FetchGroupID, objUser.FetchBranchID, objUser.FetchUserID, objUser.FetchPortalID, Request.Url.AbsoluteUri, ex.InnerException.Message, ex.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())

        End Try
    End Sub


    Sub ShowTasksList()
        Try
            divRows.InnerHtml = " "

            Dim sb As New StringBuilder()

            Using objBatchList As New EFL.Dummy.EmployeeTestEntities
                For Each objListData In objBatchList.Employee_Details_RetrieveList().ToList()

                    sb.Append("<tr>")

                    sb.Append("<td width='15%'>" & objListData.EMPLOYEE_CODE & "</td>")

                    sb.Append("<td width='15%'>" & objListData.FIRSTNAME & "</td>")
                    sb.Append("<td width='15%'>" & objListData.EMAIL_ADDRESS & "</td>")
                    sb.Append("<td width='15%'>" & objListData.DESIGNATION & "</td>")
                    sb.Append("<td width='15%'>" & objListData.EMPLOYEE_STATUS & "</td>")
                    sb.Append("<td width='15%'>" & objListData.HOME_PHONE & "</td>")
                    sb.Append("<td width='15%'>" & objListData.MOBILE_PHONE & "</td>")


                    sb.Append("<td width='15%'><a href='EmployeeDetails.aspx?ID=" & objListData.ID & "&ActionID=0' title='Edit'><i style='font-size:20px' class='icon-pencil7 text-default'></i></a></td>")

                    sb.Append("</tr>")
                    'Response.Redirect("EmployeeDetails.aspx?TL=1&ID=" & iDuumyID, False)

                Next
                divRows.InnerHtml = sb.ToString()
            End Using

        Catch ex As Exception
            SharedBLL.LogError(objUser.FetchGroupID, objUser.FetchBranchID, objUser.FetchUserID, objUser.FetchPortalID, Request.Url.AbsoluteUri, ex.InnerException.Message, ex.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())
            'Call oErrorLog.LogError(objUser.FetchGroupID, objUser.FetchBranchID, objUser.FetchUserID, objUser.FetchPortalID, "BatchDraftList.ascx:ShowProductCodePrefixList", ex.Message, HttpContext.Current.Request.ServerVariables("SCRIPT_NAME"))
            Response.Redirect("EmployeeDetails.aspx?TL=1&ID=" & iDuumyID, False)


        End Try
    End Sub



End Class
