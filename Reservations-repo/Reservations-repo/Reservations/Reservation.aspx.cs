using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reservations1.Reservations
{
    public partial class Reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                HttpCookie cookie = new HttpCookie("Reservations");

                cookie.Values["ArrivalDate"] = txtArrivalDate.Text;
                cookie.Values["DepartureDate"] = txtDepartureDate.Text;
                cookie.Values["NumberOfPeople"] = lstNumberOfPeople.SelectedValue;

                if (optKing.Checked == true)
                {
                    cookie.Values["BedType"] = "King";
                }
                else if (optTwoQueen.Checked == true)
                {
                    cookie.Values["BedType"] = "Two Queen";
                }
                else if (optQueen.Checked == true)
                {
                    cookie.Values["BedType"] = "Queen";
                }

                cookie.Values["SpecialRequest"] = txtSpecialRequests.Text;
                cookie.Values["FirstName"] = txtFirstName.Text;
                cookie.Values["LastName"] = txtLastName.Text;
                cookie.Values["EmailAddress"] = txtEmailAddress.Text;
                cookie.Values["PhoneNumber"] = txtPhoneNumber.Text;

                cookie.Expires = DateTime.Now.AddDays(1);


                Response.Cookies.Add(cookie);

                Response.Redirect("Confirmation.aspx");


            }

        }

        protected void btnCancel_Click(object sender, EventArgs e) 
        {
            Response.Redirect("https://www.elmhurst.edu/");
        }
    }
}