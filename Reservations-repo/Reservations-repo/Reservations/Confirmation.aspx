<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Reservations1.Reservations.Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Royal Inns and Suites Confirmation</title>
</head>
<body>
    <header>
        <p align="center"><img src="Images/reservation_logo.png"/></p>
    </header>
    <form id="frmReservations" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-1"></div>
                <div class="col-10">
                    <h1>Reservation Confirmation</h1>
                    <h2>Request Data</h2>
                    <br />

                    <table>
                        <tr>
                           <td>Arrival Date:</td>
                            <td width:"10">&nbsp</td>
                            <td>
                                <asp:Label ID="lblArrivalDate" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Departure Date:</td>
                                 <td width:"10">&nbsp</td>
                                
                                <td><asp:Label ID="lblDepartureDate" runat="server" Text=""></asp:Label></td>
                            </tr>
                        <tr>
                        <td>Number of People:</td>
                             <td width:"10">&nbsp</td>
                                <td><asp:Label ID="lblNumberOfPeople" runat="server" Text=""></asp:Label></td>
                                <td>
                            </td>
                        </tr>
                        <tr>
                        <td>Bed Type:</td>
                             <td width:"10">&nbsp</td>
                            <td><asp:Label ID="lblBedType" runat="server" Text=""></asp:Label></td>
                                <td>
                            </td>
                        </tr>
                    </table>
                    <br />

                    <h2>Special Requests</h2>
                    <p><asp:Label ID="lblSpecialRequests" runat="server" Text=""></asp:Label></p>

                    <br />

                    <h2>Contact Information</h2>

                    <table>
                        <tr>
                            <td>First Name:</td>
                            <td width:"10">&nbsp</td>
                            <td><asp:Label ID="lblFirstName" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Last Name:</td>
                               <td width:"10">&nbsp</td>
                            <td><asp:Label ID="lblLastName" runat="server" Text=""></asp:Label></td>
                            </tr>
                        <tr>
                        <td>Email Address:</td>
                            <td width:"10">&nbsp</td>
                             <td><asp:Label ID="lblEmailAddress" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                        <td>Phone Number:</td>
                            <td width:"10">&nbsp</td>
                               <td><asp:Label ID="lblPhoneNumber" runat="server" Text=""></asp:Label></td>
                        </tr>
                    </table>
                    <br />

                    <p>
                        <asp:Button ID="btnSubmit" CssClass="btn btn-dark" runat="server" OnClick="btnSubmit_Click" Text="CONFIRM" />
                        <asp:Button ID="btnCancel" CssClass="btn btn-red" runat="server" OnClick="btnCancel_Click" Text="CANCEL" />
                    </p>
                </div>
                <div class="col-1"></div>
            </div>
        </div>

    </form>
</body>
</html>
