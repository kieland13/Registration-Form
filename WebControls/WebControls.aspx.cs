using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebControls
{
    public partial class WebControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void registerButton_Click(object sender, EventArgs e)
        {
            string firstName = firstNameTextBox.Text;
            string lastName = lastNameTextBox.Text;

            if ((firstName.Any(Char.IsDigit)) || (firstName.Any(Char.IsSymbol)) || (firstName.Any(Char.IsPunctuation)) || (lastName.Any(Char.IsDigit)) || (lastName.Any(Char.IsSymbol)) || (lastName.Any(Char.IsPunctuation)))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('First and last name can only caontain letters');", true);
            }
            else
            {
                //create session variables to transfer the data
                Session["firstName"] = firstNameTextBox.Text;
                Session["lastname"] = lastNameTextBox.Text;
                Session["phone"] = phoneTextBox.Text;
                Session["email"] = emailTextbox.Text;
                Session["book"] = booksDropDownList.Text;
                Session["osSystem"] = osRadioButtonList.Text;

                //when button is clicked, redirect to this web form
                Response.Redirect("WebControlsResults.aspx");
            }
            
        }
    }
}