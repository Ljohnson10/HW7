
Partial Class Details
    Inherits System.Web.UI.Page
    Protected Sub FormView1_ItemDeleted1(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Dim deletedRec As String = e.Values("Name").ToString()
        lbl_deletedRec.Text = deletedRec & " has been removed from the database."
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub
End Class
