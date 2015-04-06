
Partial Class NewHW
    Inherits System.Web.UI.Page
    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Response.Redirect("./Default.aspx")
    End Sub

    Protected Sub FormView1_Load(sender As Object, e As EventArgs) Handles FormView1.Load
        FormView1.Focus()
    End Sub
End Class
