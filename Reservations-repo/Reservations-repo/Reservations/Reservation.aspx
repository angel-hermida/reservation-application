<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="Reservations1.Reservations.Reservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Royal Inns and Suites Reservations</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
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
                    <h1>Reservation Requests</h1>

                    <p><font color="red">* means that the field is required</font></p>

                    <h2>Request Data</h2>
                    <br />

                    <table>
                        <tr>
                           <td>Arrival Date:</td>
                            <td width:"10">&nbsp</td>
                            <td><asp:TextBox ID="txtArrivalDate" Width="150px" TextMode="Date" runat="server"></asp:TextBox></td>
                            <td width:"10">&nbsp></td>
                            <td>
                                <asp:RequiredFieldValidator ID="valArrivalDate" ControlToValidate="ArrivalDate" runat="server" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Departure Date:</td>
                                 <td width:"10">&nbsp</td>
                                    <td><asp:TextBox ID="txtDepartureDate" Width="150px" TextMode="Date" runat="server"></asp:TextBox></td>
                                    <td width:"10">&nbsp></td>
                                    <td>
                                    <asp:RequiredFieldValidator ID="valDepartureDate" ControlToValidate="DepartureDate" runat="server" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        <tr>
                        <td>Number of People:</td>
                             <td width:"10">&nbsp</td>
                                <td>
                                    <asp:DropDownList ID="lstNumberOfPeople" runat="server">
                                        <asp:ListItem Text="1" Value="1" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                    </asp:DropDownList></td>
                                <td width:"10">&nbsp></td>
                                <td>
                            </td>
                        </tr>
                        <tr>
                        <td>Bed Type:</td>
                             <td width:"10">&nbsp</td>
                                <td>
                                    <asp:RadioButton ID="optKing" GroupName="BedType" Text="&nbsp; King" Checked="true" runat="server"></asp:RadioButton>
                                    <asp:RadioButton ID="optTwoQueen" GroupName="BedType" Text="Two Queen" runat="server"></asp:RadioButton>
                                    <asp:RadioButton ID="optQueen" GroupName="BedType" Text="Queen" runat="server"></asp:RadioButton>
                                </td>
                                <td width:"10">&nbsp></td>
                                <td>
                            </td>
                        </tr>
                    </table>
                    <br />

                    <h2>Special Requests</h2>
                    <p><asp:TextBox ID="txtSpecialRequests" TextMode="MultiLine" Rows="5" Columns="60" runat="server"></asp:TextBox></p>

                    <br />

                    <h2>Contact Information</h2>

                    <table>
                        <tr>
                            <td>First Name:</td>
                            <td width:"10">&nbsp</td>
                            <td><asp:TextBox ID="txtFirstName" Width="350px" runat="server"></asp:TextBox></td>
                            <td width:"10">&nbsp></td>
                            <td>
                                <asp:RequiredFieldValidator ID="valFirstName" ControlToValidate="txtFirstName" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name:</td>
                                    <td width:"10">&nbsp</td>
                                    <td><asp:TextBox ID="txtLastName" Width="350px" runat="server"></asp:TextBox></td>
                                    <td width:"10">&nbsp></td>
                                    <td>
                                    <asp:RequiredFieldValidator ID="valLastName" ControlToValidate="txtLastName" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        <tr>
                        <td>Email Address:</td>
                                <td width:"10">&nbsp</td>
                                <td><asp:TextBox ID="txtEmailAddress" Width="350px" TextMode="Email" runat="server"></asp:TextBox></td>
                                <td width:"10">&nbsp></td>
                                <td><asp:RequiredFieldValidator ID="valEmailAddress" ControlToValidate="txtEmailAddress" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator></td>
                                <td width:"10">&nbsp></td>
                        </tr>
                        <tr>
                        <td>Phone Number:</td>
                                <td width:"10">&nbsp</td>
                                    <td><asp:TextBox ID="txtPhoneNumber" Width="350px" TextMode="Email" runat="server"></asp:TextBox></td>
                                    <td width:"10">&nbsp></td>
                                        <td><asp:RequiredFieldValidator ID="valPhoneNumber" ControlToValidate="txtPhoneNumber" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator></td>
                                <td width:"10">&nbsp></td>
                                <td>
                            </td>
                        </tr>
                    </table>
                    <br />

                    <p>
                        <asp:Button ID="btnSubmit" CssClass="btn btn-dark" runat="server" OnClick="" Text="Button" />
                        <asp:Button ID="btnCancel" CssClass="btn btn-red" runat="server" OnClick="" Text="Button" />
                    </p>

                </div>
                <div class="col-1"></div>
            </div>
        </div>

    </form>
</body>
</html>
