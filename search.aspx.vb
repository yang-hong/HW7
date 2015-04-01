
Partial Class _default
    Inherits System.Web.UI.Page

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub tb_lol_TextChanged(sender As Object, e As EventArgs) Handles tb_lol.TextChanged




        Dim searchWord As String
        searchWord = "Select * From yang_HW7_lol where (lol_name Like '%" + tb_lol.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord



    End Sub
End Class
