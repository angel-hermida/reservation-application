using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reservations1.Reservations
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Reservations"] != null)
            {
                HttpCookie cookie = Request.Cookies["Reservations"];

                DateTime arrivalDate = DateTime.Parse(cookie.Values["ArrivalDate"].ToString());
                DateTime departureDate = DateTime.Parse(cookie.Values["DepartureDate"].ToString());

                lblArrivalDate.Text = arrivalDate.ToString("MM-dd-yyyy");
                lblDepartureDate.Text = departureDate.ToString("MM-dd-yyyy");

                //lblArrivalDate.Text = cookie.Values["ArrivalDate"].ToString();
                //lblDepartureDate.Text = cookie.Values["DepartureDate"].ToString();

                lblNumberOfPeople.Text = cookie.Values["NumberOfPeople"];
                lblBedType.Text = cookie.Values["BedType"].ToString();

                lblSpecialRequests.Text = cookie.Values["SpecialRequest"].ToString();

                lblFirstName.Text = cookie.Values["FirstName"].ToString();
                lblLastName.Text = cookie.Values["LastName"].ToString();
                lblEmailAddress.Text = cookie.Values["EmailAddress"].ToString();
                lblPhoneNumber.Text = cookie.Values["PhoneNumber"].ToString();
            }
            else
            {
                Response.Redirect("Reservations.aspx");
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            try
            {
                //Define the SMTP Client
                SmtpClient smtpClient = new SmtpClient("smtp.sendgrid.com")
                {
                    Port = 587, //TLS port
                    Credentials = new NetworkCredential("apikey", "SENDGRID_API_KEY"),
                    EnableSsl = true
                };

                //Define the email message
                MailMessage mailMessage = new MailMessage
                {
                    From = new MailAddress("elmcsis1871@gmail.com"),
                    Subject = "Royal Inns and Suites Reservation Confirmation",
                    Body = "Thank you for booking your upcoming reservation from " + lblArrivalDate.Text + " to " + lblDepartureDate.Text + ", we look forward to your stay!",
                    IsBodyHtml = false
                };

                //Add Recipients
                mailMessage.To.Add(lblEmailAddress.Text);

                //Send the email
                smtpClient.Send(mailMessage);

                Response.Redirect("ThankYou.aspx");
            }
            catch
            {
                Response.Redirect("Error.aspx");
            }
            Response.Redirect("ThankYou.aspx");
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reservation.aspx");
        }
    }
}