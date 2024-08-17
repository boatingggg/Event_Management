<%@ include file="header.jsp"%>
  <!-- ======= About Section ======= -->
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script type="text/javascript">
var orderId = $("#orderId").val();	
var options = {
        "key": "rzp_test_rEARbPmOMhB9x5", // Enter the Key ID generated from the Dashboard
        "amount": "10000", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
        "currency": "INR",
        "name": "Online Payment",
        "description": "Online Transaction",
        "image": "https://example.com/your_logo",
        "order_id": orderId, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
        "callback_url": "http://localhost:8080/Event_Management/",
        "prefill": {
            "name": "Event Management",
            "email": "event@gmail.com",
            "contact": "9876567899"
        },
        "notes": {
            "address": "Razorpay Corporate Office"
        },
        "theme": {
            "color": "#3399cc"
        }
    };

function payment(){
	$("#bookEventId").submit();
}
function makePayment(){
    var rzp1 = new Razorpay(options);
    rzp1.open();
    e.preventDefault();
}
function SubmitMessage(){
	$("#SubmitMessageId").submit();
}
</script>
  
    <section id="about" class="about">
    <form action="paymentOnline" id="paymentOnline" method="post">
    	<input type="hidden" name="amountId" id="amountId">
    </form>
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2" data-aos="zoom-in" data-aos-delay="100">
            <div class="about-img">
              <img src="assets/img/about/about2.jpeg" alt="">
            </div>
          </div>
        
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" style="color:white">
            <h3>We provide Some Special Item like....</h3>
            <p class="fst-italic">
              Fast/Vart Items
            </p>
            <ul>
              <li><i class="bi bi-check-circle"></i> Every type of fast related book and things(Puja Samgri).</li>
              <li><i class="bi bi-check-circle"></i> Wedding rituals and Havan Samgri.</li>
              <li><i class="bi bi-check-circle"></i>Throne Locket Slim.</li>
               <li><i class="bi bi-check-circle"></i>Incense Sticks and Jain Tools.</li>
            </ul>
            <p>
             Address:
             
                Kalapana Apartment,
                Beside Hero Showroom
                Vijay Cross road
                Navarangpura,
                Ahemdabad
            </p>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Why Us</h2>
          <p>Why Choose us..</p>
        </div>

        <div class="row">

          <div class="col-lg-4">
            <div class="box" data-aos="zoom-in" data-aos-delay="100">
              <span>01</span>
              <h4>Decoration</h4>
              <p>Try to decore that you want</p>
            </div>
          </div>

          <div class="col-lg-4 mt-4 mt-lg-0">
            <div class="box" data-aos="zoom-in" data-aos-delay="200">
              <span>02</span>
              <h4>Service</h4>
              <p>Best Service</p>
            </div>
          </div>

          <div class="col-lg-4 mt-4 mt-lg-0">
            <div class="box" data-aos="zoom-in" data-aos-delay="300">
              <span>03</span>
              <h4> Gifts</h4>
              <p>Flowers for everyone...</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Why Us Section -->

    <!-- ======= Menu Section ======= -->
 <!--    <section id="menu" class="menu section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2> Food Menu</h2>
          <p>Check Our Tasty Menu</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="menu-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-starters">Starters</li>
              <li data-filter=".filter-salads">Salads</li>
              <li data-filter=".filter-specialty">Specialty</li>
            </ul>
          </div>
        </div>

        <div class="row menu-container" data-aos="fade-up" data-aos-delay="200">

          <div class="col-lg-6 menu-item filter-starters">
            <img src="assets/img/food/coc.jpg" class="menu-img" alt="">
            <div class="menu-content">
              <a href="#">Soft drinks</a><span>Rs.100</span>
            </div>
            <div class="menu-ingredients">
             Soft drink like cocacola, fanta, etc. 
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-specialty">
            <img src="assets/img/food/meduvada.jpg" class="menu-img" alt="">
            <div class="menu-content">
              <a href="#">Maduvada</a><span>Rs.200</span>
            </div>
            <div class="menu-ingredients">
              floor,no oil
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-starters">
            <img src="assets/img/food/mango lassi.jpg" class="menu-img" alt="">
            <div class="menu-content">
              <a href="#">Mango lassi</a><span>Rs.100</span>
            </div>
            <div class="menu-ingredients">
              Mango,milk,Sugar
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-specialtys">
            <img src="assets/img/food/chinese_noodles.jpg" class="menu-img" alt="">
            <div class="menu-content">
              <a href="#">Chinese Noodles</a><span>Rs.255</span>
            </div>
            <div class="menu-ingredients">
              Noodles,oil,capasicum,catchup,salt
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-specialty">
            <img src="assets/img/food/rolles.jpg" class="menu-img" alt="">
            <div class="menu-content">
              <a href="#">Rolles</a><span>Rs.305</span>
            </div>
            <div class="menu-ingredients">
              oil,capasicum,catchup,salt
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-starters">
            <img src="assets/img/food/dhokla.jpg" class="menu-img" alt="">
            <div class="menu-content">
              <a href="#">Dhokla</a><span>Rs.100</span>
            </div>
            <div class="menu-ingredients">
              floor,salt
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-salads">
            <img src="assets/img/menu/greek-salad.jpg" class="menu-img" alt="">
            <div class="menu-content">
              <a href="#">Greek Salad</a><span>Rs.100</span>
            </div>
            <div class="menu-ingredients">
              Fresh spinach, crisp romaine, tomatoes, and Greek olives
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-salads">
            <img src="assets/img/menu/spinach-salad.jpg" class="menu-img" alt="">
            <div class="menu-content">
              <a href="#">Spinach Salad</a><span>Rs.115</span>
            </div>
            <div class="menu-ingredients">
              Fresh spinach with mushrooms, hard boiled egg, and warm bacon vinaigrette
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-specialty">
            <img src="assets/img/food/f1.jpg" class="menu-img" alt="">
            <div class="menu-content">
              <a href="#">Indian Thali</a><span>Rs.400 Per Dish</span>
            </div>
            <div class="menu-ingredients">
              Daal,Rice,chapati,4-vegetable,3-sweets,Buttermilk
            </div>
          </div>

        </div>

      </div>
    </section>   --><!-- End Menu Section -->

    <!-- ======= Specials Section ======= -->
    <section id="specials" class="specials">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Specials</h2>
          <p>Check Our Specials</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">Fast related books and things</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-2"> Wedding rituals and Havan Samgri</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-3">Throne Locket Slim</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-4">Incense Sticks </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-5">Jain Tools</a>
              </li>
            </ul>
          </div>
          <div class="col-lg-9 mt-4 mt-lg-0">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Fast related books and things</h3>
                    <p class="fst-italic">Religon books relative all kind of fast.</p>
                   <!--  <p>Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus nostrum rem vero</p>   -->
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/karva.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-2">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3> Wedding rituals and Havan Samgri</h3>
                    <p class="fst-italic"> Wedding rituals  relative Product and Havan Samgri</p>
             <!--         <p>Ea ipsum voluptatem consequatur quis est. Illum error ullam omnis quia et reiciendis sunt sunt est. Non aliquid repellendus itaque accusamus eius et velit ipsa voluptates. Optio nesciunt eaque beatae accusamus lerode pakto madirna desera vafle de nideran pal</p> -->
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/Havan.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-3">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Throne Locket Slim</h3>
                    <p class="fst-italic">Singasan,Mukut,Locket</p>
                    <p>Mala,toran,etc.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/singasan.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-4">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Incense Stick</h3>
                    <p class="fst-italic">Handmaded products</p>
                    <p>DhoopStick,Incense Stick.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/sticks.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-5">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Jain Tools</h3>
                    <p class="fst-italic">Pujan Samgari,tools.</p>
                    <p>Silver plated product also available.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/jain.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Specials Section -->

    <!-- ======= Events Section ======= -->
    <section id="events" class="events">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Events</h2>
          <p>Organize Your Events in our Location</p>
        </div>

        <div class="events-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="row event-item">
                <div class="col-lg-6">
                  <img src="assets/img/event-birthday.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 content">
                  <h3>Birthday Parties</h3>
                  <div class="price">
                    <p><span>Rs.5000</span></p>
                  </div>
                  <p class="fst-italic">
                    We will decore your birthday event.
                  </p>
                  <ul>
                    <li><i class="bi bi-check-circled"></i>Like, Your dream decoration.</li>
                    <li><i class="bi bi-check-circled"></i> We'll apply in your location.</li>
                    <li><i class="bi bi-check-circled"></i> #Birthdaydecoration.</li>
                  </ul>
                  <p>
                   More details....
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="row event-item">
                <div class="col-lg-6">
                  <img src="assets/img/event-private.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 content">
                  <h3>Private Parties</h3>
                  <div class="price">
                    <p><span>Rs.10,000</span></p>
                  </div>
                  <p class="fst-italic">
                    We will decore your private event.
                  </p>
                  <ul>
                    <li><i class="bi bi-check-circled"></i> Like, Your dream decoration.</li>
                    <li><i class="bi bi-check-circled"></i>We'll apply in your location. </li>
                    <li><i class="bi bi-check-circled"></i>#privatepartydecoration</li>
                  </ul>
                  <p>
                    More details....
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->
             <div class="swiper-slide">
              <div class="row event-item">
                <div class="col-lg-6">
                  <img src="assets/img/resort/r6.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 content">
                  <h3>Haldi Function</h3>
                  <div class="price">
                    <p><span>Rs.10,000</span></p>
                  </div>
                  <p class="fst-italic">
                    We will decore your Haldi Function.
                  </p>
                  <ul>
                    <li><i class="bi bi-check-circled"></i> Like, Your dream decoration.</li>
                    <li><i class="bi bi-check-circled"></i>We'll apply in your location. </li>
                    <li><i class="bi bi-check-circled"></i>#Haldidecoration</li>
                  </ul>
                  <p>
                    More details....
                  </p>
                </div>
              </div>
            </div>
            
             <div class="swiper-slide">
              <div class="row event-item">
                <div class="col-lg-6">
                  <img src="assets/img/about/about4.jpeg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 content">
                  <h3>Mehandi Function</h3>
                  <div class="price">
                    <p><span>Rs.10,000</span></p>
                  </div>
                  <p class="fst-italic">
                    We will decore your Mehandi Function.
                  </p>
                  <ul>
                    <li><i class="bi bi-check-circled"></i> Like, Your dream decoration.</li>
                    <li><i class="bi bi-check-circled"></i>We'll apply in your location. </li>
                    <li><i class="bi bi-check-circled"></i>#Mehandidecoration</li>
                  </ul>
                  <p>
                    More details....
                  </p>
                </div>
              </div>
            </div>

            <div class="swiper-slide">
              <div class="row event-item">
                <div class="col-lg-6">
                  <img src="assets/img/resort/r5.webp" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 content">
                  <h3>Custom Parties</h3>
                  <div class="price">
                    <p><span>Rs.50,000</span></p>
                  </div>
                  <p class="fst-italic">
                    We will decore your Wedding event.
                  </p>
                  <ul>
                    <li><i class="bi bi-check-circled"></i> Like, Your dream decoration.</li>
                    <li><i class="bi bi-check-circled"></i> We'll apply in your location.</li>
                    <li><i class="bi bi-check-circled"></i>#Weddingdecoration</li>
                  </ul>
                  <p>
                    More details....
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Events Section -->

    <!-- ======= Book A Table Section ======= 
    <section id="menu" class="menu section-bg">-->
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
              <input type="text" name="booking_days" class="form-control" id="days" placeholder="Days" data-rule="minlen:4" data-msg="Please enter booking days">
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
      
    </section>
     <!-- End Book A Table Section -->

    <!-- ======= Testimonials Section ======= -->
  <!--   <section id="testimonials" class="testimonials section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Testimonials</h2>
          <p>What they're saying about us</p>
        </div>

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                <h3>Saul Goodman</h3>
                <h4>Ceo &amp; Founder</h4>
              </div>
            </div>
             -->
            <!-- End testimonial item -->

      <!--       <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                <h3>Sara Wilsson</h3>
                <h4>Designer</h4>
              </div>
            </div><!-- End testimonial item -->

     <!--        <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                <h3>Jena Karlis</h3>
                <h4>Store Owner</h4>
              </div>
            </div><!-- End testimonial item -->

      <!--       <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                <h3>Matt Brandon</h3>
                <h4>Freelancer</h4>
              </div>
            </div><!-- End testimonial item -->

   <!--          <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                <h3>John Larson</h3>
                <h4>Entrepreneur</h4>
              </div>
            </div><!-- End testimonial item -->

    <!--       </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section>
     -->
    <!-- End Testimonials Section -->

    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">

      <div class="container" data-aos="fade-up">
        <div class="section-title">
          <h2>Gallery</h2>
          <p>Some photos from Our Event</p>
        </div>
      </div>

      <div class="container-fluid" data-aos="fade-up" data-aos-delay="100">

        <div class="row g-0">

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/resort/r6.jpg" class="gallery-lightbox" data-gall="gallery-item">
                <img src="assets/img/resort/r6.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/resort/r4.jpeg" class="gallery-lightbox" data-gall="gallery-item">
                <img src="assets/img/resort/r4.jpeg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/destination/des3.jpg" class="gallery-lightbox" data-gall="gallery-item">
                <img src="assets/img/destination/des3.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/resort/r3.jpeg" class="gallery-lightbox" data-gall="gallery-item">
                <img src="assets/img/resort/r3.jpeg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/c1.jpg" class="gallery-lightbox" data-gall="gallery-item">
                <img src="assets/img/c1.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/c2.jpg" class="gallery-lightbox" data-gall="gallery-item">
                <img src="assets/img/c2.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/c3.jpg" class="gallery-lightbox" data-gall="gallery-item">
                <img src="assets/img/c3.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/c4.jpg" class="gallery-lightbox" data-gall="gallery-item">
                <img src="assets/img/c4.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Gallery Section -->

    <!-- ======= Chefs Section ======= -->
    <section id="chefs" class="chefs">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Events</h2>
          <p>Our Proffesional Events</p>
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6">
            <div class="member" data-aos="zoom-in" data-aos-delay="100">
              <img src="assets/img/cp2.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Corporate Event</h4>
                  <span>Conferences,Seminars,Product launches,Trade shows,Team-building events,Business or corporate dinner,Corporate retreat,Board meetings.</span>
                </div>
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="member" data-aos="zoom-in" data-aos-delay="200">
              <img src="assets/img/private.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Private Event</h4>
                  <span>Birthday,wedding functions,wedding,dinnner,etc.</span>
                </div>
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="member" data-aos="zoom-in" data-aos-delay="300">
              <img src="assets/img/charity1.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Charity Events</h4>
                  <span>Dance comptision,Art show,charitiable event,etc.</span>
                </div>
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Chefs Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contact</h2>
          <p>Contact Us</p>
        </div>
      </div>

      <div data-aos="fade-up">
        <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" allowfullscreen></iframe>
      </div>

      <div class="container" data-aos="fade-up" style="color:white">

        <div class="row mt-5">

          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p>Kalapana Apartment beside hero showroom,Vijay Cross Road Navarangpura,Ahemdabad</p>
              </div>

              <div class="open-hours">
                <i class="bi bi-clock"></i>
                <h4>Open Hours:</h4>
                <p>
                  Monday-Saturday:<br>
                  11:00 AM - 23:00 PM
                </p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>info@example.com</p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p>+91 9099779796</p>
              </div>

            </div>

          </div>

          <div class="col-lg-8 mt-5 mt-lg-0">

            <form action="submitContactus" id="SubmitMessageId" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" name="feedbackname" class="form-control" id="feedbackname" placeholder="Your Name" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="feedbackemail" id="feedbackemail" placeholder="Your Email" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="feedbacksubject" id="feedbacksubject" placeholder="Subject" required>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="feedbackmessage" id="feedbackmessage" rows="8" placeholder="Review" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center">
              	<div class="text-center"><button type="button" onclick="SubmitMessage();">Send Review</button></div>
              </div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

<%@ include file="footer.jsp"%>
 <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>