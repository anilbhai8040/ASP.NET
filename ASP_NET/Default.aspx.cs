using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblMsg.Text = "";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            // Collect form data
            string name = txtName.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            string mobile = txtMobile.Text;
            string dob = txtDOB.Text;
            string gender = rblGender.SelectedValue;

            // Collect hobbies without LINQ
            string hobbies = "";
            for (int i = 0; i < cblHobby.Items.Count; i++)
            {
                if (cblHobby.Items[i].Selected)
                {
                    if (hobbies != "")
                        hobbies += ", ";
                    hobbies += cblHobby.Items[i].Text;
                }
            }

            string country = ddlCountry.SelectedValue;
            string address = txtAddress.Text;

            // Display success message
            lblMsg.Text = "User Registered Successfully!";
        }
        else
        {
            lblMsg.Text = "";
        }
    }

    // Terms & Conditions validation
    protected void cvTerms_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = chkTerms.Checked;
    }
}
