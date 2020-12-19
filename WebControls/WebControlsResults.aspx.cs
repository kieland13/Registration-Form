using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebControls
{
    public partial class WebControlsResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            resultsTextBox.Text = "Here are the entries you entered:\r\nName: ";

            //checking that the box was entered, transfer all this data to the results text box
            if (Session["firstName"] != null)
            {
                resultsTextBox.Text += Session["firstName"].ToString() + " ";
            }

            //checking that the box was entered, transfer all this data to the results text box
            if (Session["lastName"] != null)
            {
                resultsTextBox.Text += Session["lastName"].ToString() + "\r\n";
            }

            //checking that the box was entered, transfer all this data to the results text box
            if (Session["phone"] != null)
            {
                resultsTextBox.Text += "Phone number: " + Session["phone"].ToString() + "\r\n";
            }

            //checking that the box was entered, transfer all this data to the results text box
            if (Session["email"] != null)
            {
                resultsTextBox.Text += "Email address: " + Session["email"].ToString() + "\r\n";
            }

            //checking that the box was entered, transfer all this data to the results text box
            if (Session["book"] != null)
            {
                resultsTextBox.Text += "Book chosen: " + Session["book"].ToString() + "\r\n";
            }

            //checking that the box was entered, transfer all this data to the results text box
            if (Session["osSystem"] != null)
            {
                resultsTextBox.Text += "Operating System: " + Session["osSystem"].ToString();
            }
        }
    }
}