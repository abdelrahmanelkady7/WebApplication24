<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patient.aspx.cs" Inherits="WebApplication24.patient" %>



<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Appointment Page</title>
    <link rel="stylesheet" href="patient.css" />
</head>
<body>
    
        <header>
            <div class="logo">
                <img src="https://img.freepik.com/free-vector/hospital-logo-design-vector-medical-cross_53876-136743.jpg?size=626&ext=jpg&ga=GA1.1.1012473797.1702064783&semt=ais" alt="Clinic Logo" />
            </div>
            <div class="clinic-name">
                <a href="homepage.aspx" class="home-button">health care clinic</a>
            </div>
        </header>

        <div class="appointment-section">
            <h1 class="appointment-heading">Appointment</h1>

            <form id="appointmentForm" runat="server" onsubmit="return submitAppointment()">
                <div class="date-time">
                    <div>
                        <label for="date">Date:</label>
                        <input type="date" id="date" runat="server" />
                    </div>
                    <div>
                        <label for="time">Time:</label>
                        <input type="time" id="time" runat="server" />
                    </div>
                </div>

                <div class="people-counter">
                    <label for="people">Number of People:</label>
                    <input type="number" id="people" runat="server" />
                </div>

                <div class="name-inputs">
                    <div>
                        <label for="last-name">Last Name:</label>
                        <input type="text" id="Text1" runat="server" />
                    </div>
                    <div>
                        <label for="first-name">First Name:</label>
                        <input type="text" id="Text2" runat="server"  />
                    </div>
                </div>

                <div class="contact-inputs">
                    <div>
                        <label for="email">Email:</label>
                        <input type="email" id="email" runat="server" />
                    </div>
                    <div>
                        <label for="phone">Phone Number:</label>
                        <input type="tel" id="phone" runat="server" />
                    </div>
                </div>

                <div class="illness-type">
                    <label for="illness">Type of Illness:</label>
                    <input type="text" id="illness" runat="server"  />
                </div>

                <div class="doctor-selection">
                    <label for="doctor">Select a Doctor:</label>
                    <select id="doctor" runat="server">
                        <option value="dr-ahmed">Dr. Ahmed</option>
                        <option value="dr-youssef">Dr. Youssef</option>
                        <option value="dr-omar">Dr. Omar</option>
                    </select>
                    <div class="doctor-info" id="Div1" runat="server">
                        <p>Hover over a doctor to view details.</p>
                        <div id="dr-smith-info" class="doctor-details">
                            <p>Dr. Ahmed - Experienced in Internal Medicine.</p>
                        </div>
                        <div id="dr-jones-info" class="doctor-details">
                            <p>Dr. Youssef - Specialized in Pediatrics.</p>
                        </div>
                        <div id="dr-doe-info" class="doctor-details">
                            <p>Dr. Omar - Expertise in Cardiology.</p>
                        </div>
                    </div>
                </div>

                <div class="comments">
                    <label for="comments">Comments:</label>
                    <textarea id="comments" runat="server" rows="5"></textarea>
                </div>

                <asp:Button runat="server" ID="submitAppointmentButton" CssClass="submit-appointment" Text="Submit Appointment" OnClick="SubmitAppointment" />
            </form>
        </div>

        <div class="queue-container">
            <h2>Your Queue Number:</h2>
            <div id="Div2" runat="server">0</div>
        </div>

        <div class="saved-appointments">
            <h2>Saved Appointments</h2>
            <asp:Repeater runat="server" ID="appointmentsListRepeater">
                <ItemTemplate>
                    <li><%# Container.DataItem %></li>
                </ItemTemplate>
            </asp:Repeater>
        </div>

    <script src="patient.js"></script>
</body>
</html>
