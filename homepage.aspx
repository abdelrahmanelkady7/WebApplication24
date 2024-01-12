<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication24.homepage" %>


<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Health Care Clinic</title>
  <link rel="stylesheet" href="homepage.css" />
</head>
<body>

  <form id="form1" runat="server">
    <header>
      <div class="logo">
        <img src="https://img.freepik.com/free-vector/hospital-logo-design-vector-medical-cross_53876-136743.jpg?size=626&ext=jpg&ga=GA1.1.1012473797.1702064783&semt=ais" alt="Clinic Logo" />
        <h1>Health Care</h1>
      </div>
      <div class="cta-buttons">
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
      </div>
      <a href="login.aspx" class="reserve-button">login</a>
    </header>

    <section class="main-home">
      <div class="center-text">
        <h1>Health Care</h1>
        <p class="sub-heading">your health is our priority</p>
        <a href="#about" class="readmore-button">read more</a>
      </div>
    </section>

    <section id="about" class="about">
      <div class="center-text">
        <h2>About Us</h2>
        <p>
          Your Clinic is a trusted healthcare provider committed to delivering exceptional medical services. Our team of
          experienced professionals is dedicated to ensuring the well-being and satisfaction of our patients.
        </p>
      </div>
    </section>

    <section id="contact" class="contact">
      <div class="center-text">
        <h2>Contact Us</h2>
        <p>For appointments or inquiries, please contact us:</p>
        <p>Phone: +1 (123) 456-7890</p>
        <p>Email: info@healthcare.com</p>
      </div>
    </section>
  </form>
</body>
</html>

