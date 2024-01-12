<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notes.aspx.cs" Inherits="WebApplication24.notes" %>


<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>add notes:</title>
    <style>
        body {
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
             background: url('https://img.freepik.com/free-photo/blur-hospital_1203-7957.jpg?size=626&ext=jpg&ga=GA1.1.1012473797.1702064783&semt=ais') center/cover no-repeat fixed;
        }

        .form-container {
            background-color: rgba(57, 199, 241, 0.70);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            width: 300px;
            opacity: 0.9; /* Adjust opacity as needed */
        }

        .form-container input,
        .form-container textarea {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            box-sizing: border-box;
        }

        .form-container button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="patientNotesForm" runat="server" class="form-container">
        <h2>Patient Notes</h2>
        <div>
            <label for="patientName">Patient Name:</label>
            <input type="text" id="patientName" runat="server" />
        </div>
        <div>
            <label for="patientNotes">Patient Notes:</label>
            <textarea id="patientNotes" runat="server" rows="5"></textarea>
        </div>
         <asp:Button runat="server" ID="submitNotesButton" Text="Submit Notes" OnClick="SubmitNotes_Click" CssClass="button" />
    </form>
</body>
</html>
