
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="home.css">
        <link rel="icon" href="logo.png">        
        <title>Home</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5">
        <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="img/home.png" alt="Image" style="max-width: 100%;max-height: 500px;">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 700px;max-height: 500px;">
                            <h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">Luxury Living
                            </h6>
                            <h5 class="display-3 text-white mb-4 animated slideInDown">Hi, <%=session.getAttribute("name")%><br>
                            </h5>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="img/image9.png" alt="Image" style="max-width: 100%;max-height: 500px;">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 700px;max-height: 500px;">
                            <h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">Luxury Living
                            </h6>
                            <h1 class="display-3 text-white mb-4 animated slideInDown">Welcome To Marriott Family!!!
                            </h1>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="img/image10.png" alt="Image" style="max-width: 100%;max-height: 500px;">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 700px;max-height: 500px;">
                            <h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">Luxury Living
                            </h6>
                            <h1 class="display-3 text-white mb-4 animated slideInDown">Spend Your Dream work life With Us
                            </h1>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- Carousel End -->
    
    <!-- Room Start -->
    <div id="room">
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">

                <h1 class="mb-5"> <span class="text-primary text-uppercase">Gallery</span></h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="room-item shadow rounded overflow-hidden">

                        <div class="p-4 mt-2">


                            <img src="img/image2.png" width="360px" height="250px" alt="">

                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="room-item shadow rounded overflow-hidden">

                        <div class="p-4 mt-2">


                            <img src="img/image5.jpg" width="360px" height="250px" alt="">

                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="room-item shadow rounded overflow-hidden">

                        <div class="p-4 mt-2">


                            <img src="img/image4.jpg" width="360px" height="250px" alt="">

                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="room-item shadow rounded overflow-hidden">

                        <div class="p-4 mt-2">


                            <img src="img/image6.jpg" width="360px" height="250px" alt="">

                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="room-item shadow rounded overflow-hidden">

                        <div class="p-4 mt-2">


                            <img src="img/image7.jpg" width="360px" height="250px" alt="">

                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="room-item shadow rounded overflow-hidden">

                        <div class="p-4 mt-2">


                            <img src="img/image8.jpg" width="360px" height="250px" alt="">

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    </div>    
    <!-- Room End -->
    <!-- Facilities Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title text-center text-primary text-uppercase">Our Facilities</h6>
                <h1 class="mb-5">Why<span class="text-primary text-uppercase"> Stay</span> with Us</h1>

            </div>
            <p class="text-para"> Our hotel is renowned for its exceptional service, and that reputation
                is built on the knowledge and experience of our staff. Your understanding of the 
                hospitality industry, coupled with your ability to anticipate and meet our guests' 
                needs, sets us apart and contributes significantly to our continued growth.
            </p>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item rounded" href="">
                        <div class="service-icon bg-transparent border rounded p-1">
                            <div class="w-100 h-100 border rounded d-flex align-items-center justify-content-center">


                                <img src="img/image11.png" width="50px" alt="Staff Accommodation">
                            </div>
                        </div>
                        <h5 class="mb-3">Staff Accommodation</h5>
                        <p class="text-body mb-0">Our hotel provide on-site accommodation for staff members, 
                            especially for those who live far away or work in positions that require them to be 
                            available around the clock, such as security personnel or night shift employees.</p>
                    </div>

                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="service-item rounded" href="">
                        <div class="service-icon bg-transparent border rounded p-1">
                            <div class="w-100 h-100 border rounded d-flex align-items-center justify-content-center">
                                <img src="img/image12.png" width="50px" alt="Staff Cafeteria">
                            </div>
                        </div>
                        <h5 class="mb-3">Staff Cafeteria</h5>
                        <p class="text-body mb-0">A dedicated staff cafeteria where employees can have meals
                            and breaks is a common facility provided by hotels. 
                            It ensures that staff members have access to nutritious meals at 
                            affordable prices during their shifts.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item rounded" href="">
                        <div class="service-icon bg-transparent border rounded p-1">
                            <div class="w-100 h-100 border rounded d-flex align-items-center justify-content-center">
                                <img src="img/image13.png" width="50px" alt=" Uniforms and Laundry Services">
                            </div>
                        </div>
                        <h5 class="mb-3"> Uniforms and Laundry Services:</h5>
                        <p class="text-body mb-0">Hotels usually provide uniforms to staff members 
                            and take care of the laundry process. This ensures that employees have clean, 
                            presentable attire for their work and saves them the hassle of maintaining 
                            their uniforms themselves.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="service-item rounded" href="">
                        <div class="service-icon bg-transparent border rounded p-1">
                            <div class="w-100 h-100 border rounded d-flex align-items-center justify-content-center">
                                <img src="img/image14.png" width="50px" alt="Employee Recreation Areas">
                            </div>
                        </div>
                        <h5 class="mb-3"> Employee Recreation Areas</h5>
                        <p class="text-body mb-0">Hotels may have designated employee recreation areas where staff 
                            can relax and unwind during their breaks. These areas may include lounges, 
                            recreational games, TV rooms, or quiet spaces for relaxation.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="service-item rounded" href="">
                        <div class="service-icon bg-transparent border rounded p-1">
                            <div class="w-100 h-100 border rounded d-flex align-items-center justify-content-center">
                                <img src="img/image15.png" width="50px" alt="Health and Fitness Facilities">
                            </div>
                        </div>
                        <h5 class="mb-3">Health and Fitness Facilities</h5>
                        <p class="text-body mb-0">Our hotel provide access to gym
                            for our staff. This promotes a healthy lifestyle and allows 
                            employees to prioritize your well-being.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
                    <div class="service-item rounded" href="">
                        <div class="service-icon bg-transparent border rounded p-1">
                            <div class="w-100 h-100 border rounded d-flex align-items-center justify-content-center">
                                <img src="img/image16.png" width="50px" alt="Staff Discounts and Benefits">
                            </div>
                        </div>
                        <h5 class="mb-3">Staff Discounts and Benefits</h5>
                        <p class="text-body mb-0">Our hotel may offer staff discounts on accommodation,
                            dining, spa services, or other hotel amenities. Additionally, 
                            employees may have access to benefits such as health insurance, 
                            retirement plans, and employee recognition programs.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->
       
    
       <%@include file="footer.jsp" %>     
    </body>
</html>
