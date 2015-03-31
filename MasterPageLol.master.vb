
Partial Class MasterPageLol
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        'Dim time As Date = Date.Now
        lbl_time.Text = String.Format("{0:mm/dd/yyyy hh:mm tt}", Date.Now)
    End Sub
End Class

