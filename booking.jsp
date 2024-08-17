    <%@ include file="header.jsp"%>
    <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Evento Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

 

</head>
<body>
    <!-- ======= Book A Table Section ======= -->
    <section id="book-a-table" class="book-a-table">
    <%if(null != request.getAttribute("message")){ %>
    	<%=request.getAttribute("message").toString() %>
    <%} %>
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Book now</h2>
          <p>Book Event</p>
        </div>

        <form action="bookingEvent" id="bookEventId" method="post" role="form" class="php-email-form" data-aos="fade-up" data-aos-delay="100">
          <div class="row">
            <div class="col-lg-4 col-md-6 form-group">
              <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6 form-group mt-3 mt-md-0">
              <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6 form-group mt-3 mt-md-0">
              <input type="text" class="form-control" name="phone" id="phone" placeholder="Your Phone" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6 form-group mt-3">
              <input type="date" name="booking_starting_date" class="form-control" id="date" placeholder="Date" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <div class="validate"></div>
            </div>
              <div class="col-lg-4 col-md-6 form-group mt-3">
              <input type="date" name="booking_ending_date" class="form-control" id="date" placeholder="Date" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6 form-group mt-3">
              <input type="text" name="event_name" class="form-control" id="event" placeholder="Event name" data-rule="event" data-msg="Please enter event name">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6 form-group mt-3">
              <input type="text" class="form-control" name="book_status" id="status" placeholder="Booking Status" data-rule="minlen:4" data-msg="Please enter booking status">
              <div class="validate"></div>
            </div>
             <div class="col-lg-4 col-md-6 form-group mt-3">
              <input type="text" class="form-control" name="venue" id="venue" placeholder="Booking Venue" data-rule="minlen:4" data-msg="Please enter venue">
              <div class="validate"></div>
            </div>
            
           
            <div class="col-lg-4 col-md-6 form-group mt-3">
              <input type="number" class="form-control" name="people" id="people" placeholder="# of people" data-rule="minlen:1" data-msg="Please enter at least 1 chars">
              <div class="validate"></div>
            </div>
          </div>
          <div class="form-group mt-3">
            <textarea class="form-control" name="message" rows="5" placeholder="Message"></textarea>
            <div class="validate"></div>
          </div>
          <div class="mb-3">
            <div class="loading">Loading</div>
            <div class="error-message"></div>
            <div class="sent-message">Your booking request was sent. We will call back or send an Email to confirm your reservation. Thank you!</div>
          </div>
          <input type="hidden" name="amountId" id="amountId" value="250000">
        </form>
        <%if(null == request.getAttribute("orderId")){
        %>
        	<div class="text-center"><button type="button" onclick="payment();">Book now</button></div>
            
        <%} else {%>
        	<input type="hidden" name="orderId" id="orderId" value="<%=request.getAttribute("orderId").toString()%>"> 
        	<div class="text-center"><button type="button" onclick="makePayment();">Pay now</button></div>
        <%}%>
          
      </div>
    </section><!-- End Book A Table Section -->
    </body>
    <%@ include file="footer.jsp"%>