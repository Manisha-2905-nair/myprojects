
Partial Class DUmmy_ProductRegistrationMenu
    Inherits System.Web.UI.UserControl
    Dim objUser As New UserBLL
    Private Sub ProductRegistrationMenu_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If Not IsPostBack Then
                ShowTasksList1()
                ShowUpdateList()
                ShowDigitizationList()

            End If
        Catch ex As Exception
            SharedBLL.LogError(SharedBLL.iGroupID, SharedBLL.iBranchID, objUser.FetchUserID, SharedBLL.iPortallID, HttpContext.Current.Request.Url.AbsoluteUri, ex.Message, ex.InnerException.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())


        End Try

    End Sub
    Sub ShowTasksList1()


        Try
            Dim sb As New StringBuilder
            Using objSourceList As New EFL.Dummy.ProductRegistrationTestFormEntities
                For Each objListData In objSourceList.Product_Registration_Management_Actions_RetrieveList().ToList()

                    sb.Append("<tr>")
                    sb.Append("<td width='15%'>" & objListData.REGULATORY_AGENCY & "</td>")
                    sb.Append("<td width='15%'>" & objListData.CUSTOMER_NAME & "</td>")
                    sb.Append("<td width='15%'>" & objListData.MANUFACTURER_CODE & "</td>")
                    sb.Append("<td width='15%'>" & objListData.ITEM_REFERENCE_NUMBER & "</td>")
                    sb.Append("<td width='15%'>" & objListData.PRODUCT_CLASSIFICATION & "</td>")
                    sb.Append("<td width='15%'>" & objListData.PRODUCT_STATUS & "</td>")
                    sb.Append("<td width='15%'><a href='ProductRegistrationManagement.aspx?ID=" & objListData.ID & "&ActionID=0' title='Edit'><i style='font-size:20px' class='icon-pencil7 text-default'></i></a></td>")
                    sb.Append("</tr>")

                Next

            End Using
            divList1.InnerHtml = sb.ToString
        Catch ex As Exception
            SharedBLL.LogError(SharedBLL.iGroupID, SharedBLL.iBranchID, objUser.FetchUserID, SharedBLL.iPortallID, HttpContext.Current.Request.Url.AbsoluteUri, ex.Message, ex.InnerException.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())
        End Try

    End Sub

    Sub ShowUpdateList()
        Try

            Dim sb As New StringBuilder()

            Using objBatchList As New EFL.Dummy.ProductRegistrationTestFormEntities
                For Each objListData In objBatchList.Product_Registration_Entry_Actions_RetrieveList().ToList()

                    sb.Append("<tr>")
                    sb.Append("<td width='15%'>" & objListData.REGULATORY_AGENCY & "</td>")
                    sb.Append("<td width='15%'>" & objListData.CUSTOMER_NAME & "</td>")
                    sb.Append("<td width='15%'>" & objListData.COUNTRY_DRUG_CODE_FORMAT & "</td>")
                    sb.Append("<td width='15%'>" & objListData.PRODUCT_CLASSIFICATION & "</td>")
                    sb.Append("<td width='15%'>" & objListData.PRODUCT_STATUS & "</td>")
                    sb.Append("<td width='15%'><a href='ProductRegistrationEntryForm.aspx?ID=" & objListData.ID & "&ActionID=0' title='Edit'><i style='font-size:20px' class='icon-pencil7 text-default'></i></a></td>")
                    sb.Append("</tr>")


                Next

            End Using
            divList2.InnerHtml = sb.ToString
        Catch ex As Exception
            SharedBLL.LogError(objUser.FetchGroupID, objUser.FetchBranchID, objUser.FetchUserID, objUser.FetchPortalID, Request.Url.AbsoluteUri, ex.InnerException.Message, ex.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())
        End Try
    End Sub
    Sub ShowDigitizationList()
        Try
            Dim sb As New StringBuilder()

            Using objBatchList As New EFL.Dummy.DigitizationManagementTestEntities
                For Each objListData In objBatchList.Digitization_Requisition_Management_RetrieveList().ToList()

                    sb.Append("<tr>")
                    sb.Append("<td width='15%'>" & objListData.DOCKET_BARCODE_SERIAL & "</td>")
                    sb.Append("<td width='15%'>" & objListData.TITLE & "</td>")
                    sb.Append("<td width='15%'>" & objListData.DOCUMENT_REFERENCE & "</td>")
                    sb.Append("<td width='15%'>" & objListData.DEPARTMENT & "</td>")
                    sb.Append("<td width='15%'>" & objListData.SUB_DEPARTMENT & "</td>")
                    sb.Append("<td width='15%'>" & objListData.DOCUMENT_CLASSIFICATION & "</td>")
                    sb.Append("<td width='15%'>" & objListData.DOCUMENT_CLASS & "</td>")
                    sb.Append("<td width='15%'>" & objListData.VERSION & "</td>")
                    sb.Append("<td width='15%'><a href='DigitizationManagement.aspx?ID=" & objListData.ID & "&ActionID=0' title='Edit'><i style='font-size:20px' class='icon-pencil7 text-default'></i></a></td>")
                    sb.Append("</tr>")
                Next

            End Using
            divList3.InnerHtml = sb.ToString

        Catch ex As Exception
            SharedBLL.LogError(objUser.FetchGroupID, objUser.FetchBranchID, objUser.FetchUserID, objUser.FetchPortalID, Request.Url.AbsoluteUri, ex.InnerException.Message, ex.Message, Me.GetType().FullName & ":" & Reflection.MethodBase.GetCurrentMethod().ToString())

        End Try
    End Sub

End Class

