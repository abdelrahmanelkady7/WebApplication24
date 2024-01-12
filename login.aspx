<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication24.login" %>



<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Login Page</title>
  <link rel="stylesheet" href="login.css" />
</head>
<body>

 
    <div class="container">
      <div class="photo-container"></div>
      <div class="login-container">
        <div class="logo">
          <img src="https://img.freepik.com/free-vector/hospital-logo-design-vector-medical-cross_53876-136743.jpg?size=626&ext=jpg&ga=GA1.1.1012473797.1702064783&semt=ais" alt="Health Care Logo" />
          <h1>Health Care</h1>
        </div>
        <h2>Login</h2>
        <form id="loginForm" runat="server">
          <label for="email">Email:</label>
          <input type="email" id="email" />

          <label for="password">Password:</label>
          <input type="password" id="password" />

          <button id="loginButton" type="button" runat="server" onclick="login()">Login</button>
        </form>
      </div>
    </div>
  <script src="login2.js"></script>
</body>
</html>
