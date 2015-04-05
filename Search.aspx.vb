
Partial Class Search
    Inherits System.Web.UI.Page

  

    Protected Sub Searchbtn_Click(sender As Object, e As EventArgs) Handles Searchbtn.Click
        Dim command As String

        If DropDownList1.SelectedItem.Text = "Completed" Then
            command = "Select * From ljohnsonHW7 where Completed = 'True'"
            SqlDataSource1.SelectCommand = command
        ElseIf DropDownList1.SelectedItem.Text = "Not Completed" Then
            command = "Select * From ljohnsonHW7 where Completed = 'False'"
            SqlDataSource1.SelectCommand = command
        End If

    End Sub

    Protected Sub Searchbtn1_Click(sender As Object, e As EventArgs) Handles Searchbtn1.Click
        Dim searchWord As String
        searchWord = "Select * From ljohnsonHW7 where (Name Like '%" + Search1.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
