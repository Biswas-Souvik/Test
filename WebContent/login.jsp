<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./styles/pageStructure.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link>
</head>
<body>
	
	<!-- ============================================ -->
<!--                 Navigation                   -->
<!-- ============================================ -->

<header id="cs-navigation">
    <div class="cs-container">
        <!--Nav Logo-->
        <!--Logo is turned white in the css with a filter on dark mode-->
        <a href="" class="cs-logo" aria-label="back to home">
            <img src="https://csimg.nyc3.cdn.digitaloceanspaces.com/Images/Graphics/day-care.svg" alt="logo" width="210" height="29" aria-hidden="true" decoding="async">
        </a>
        <!--Navigation List-->
        <nav class="cs-nav" role="navigation">
            <!--Mobile Nav Toggle-->
            <button class="cs-toggle" aria-label="mobile menu toggle">
                <div class="cs-box" aria-hidden="true">
                    <span class="cs-line cs-line1" aria-hidden="true"></span>
                    <span class="cs-line cs-line2" aria-hidden="true"></span>
                    <span class="cs-line cs-line3" aria-hidden="true"></span>
                </div>
            </button>
            <!-- We need a wrapper div so we can set a fixed height on the cs-ul in case the nav list gets too long from too many dropdowns being opened and needs to have an overflow scroll. This wrapper acts as the background so it can go the full height of the screen and not cut off any overflowing nav items while the cs-ul stops short of the bottom of the screen, which keeps all nav items in view no matter how mnay there are-->
            <div class="cs-ul-wrapper">
                <ul id="cs-expanded" class="cs-ul" aria-expanded="false">
                    <li class="cs-li">
                        <a href="/jsp-servlet-jdbc/index.jsp" class="cs-li-link cs-active">
                            Home
                        </a>
                    </li>
                    <li class="cs-li">
                        <a href="" class="cs-li-link">
                            About
                        </a>
                    </li>
                    <!--Copy and paste this cs-dropdown list item and replace any .cs-li with this cs-dropdown group to make a new dropdown and it will work-->
                    <li class="cs-li cs-dropdown" tabindex="0">
                        <span class="cs-li-link">
                            Services
                            <img class="cs-drop-icon" src="https://csimg.nyc3.cdn.digitaloceanspaces.com/Icons/down-gold.svg" alt="dropdown icon" width="15" height="15" decoding="async" aria-hidden="true">
                        </span>
                        <ul class="cs-drop-ul">
                            <li class="cs-drop-li">
                                <a href="" class="cs-li-link cs-drop-link">Registration</a>
                            </li>
                            <li class="cs-drop-li">
                                <a href="" class="cs-li-link cs-drop-link">Our Classes</a>
                            </li>
                        </ul>
                    </li>
                    <li class="cs-li">
                        <a href="/jsp-servlet-jdbc/login.jsp" class="cs-li-link">
                            Login
                        </a>
                    </li>
                    <li class="cs-li">
                        <a href="" class="cs-li-link">
                            Contact
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="cs-contact-group">
            <a href="tel:+84 1985 33 999" class="cs-phone">
                <img class="cs-phone-icon" src="https://csimg.nyc3.cdn.digitaloceanspaces.com/Icons/phone-1a.svg" alt="logo" width="24" height="24" aria-hidden="true" decoding="async">
                +84 1985 33 999
            </a>
            <div class="cs-social">
                <a href="" class="cs-social-link">
                    <img class="cs-social-icon" src="https://csimg.nyc3.cdn.digitaloceanspaces.com/Images/Icons/facebook-1a.svg" alt="logo" width="12" height="12" aria-hidden="true" decoding="async">
                </a>
                <a href="" class="cs-social-link">
                    <img class="cs-social-icon" src="https://csimg.nyc3.cdn.digitaloceanspaces.com/Images/Icons/twitter-1a.svg" alt="logo" width="12" height="12" aria-hidden="true" decoding="async">
                </a>
                <a href="" class="cs-social-link">
                    <img class="cs-social-icon" src="https://csimg.nyc3.cdn.digitaloceanspaces.com/Images/Icons/instagram1a.svg" alt="logo" width="12" height="12" aria-hidden="true" decoding="async">
                </a>
                <a href="" class="cs-social-link">
                    <img class="cs-social-icon" src="https://csimg.nyc3.cdn.digitaloceanspaces.com/Images/Icons/youtube1a.svg" alt="logo" width="12" height="12" aria-hidden="true" decoding="async">
                </a>
            </div>
        </div>
        <!--Dark Mode toggle, uncomment button code if you want to enable a dark mode toggle-->
        
        <!-- 
        <button id="dark-mode-toggle" aria-label="dark mode toggle">
            <svg class="cs-moon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 480 480" style="enable-background:new 0 0 480 480" xml:space="preserve"><path d="M459.782 347.328c-4.288-5.28-11.488-7.232-17.824-4.96-17.76 6.368-37.024 9.632-57.312 9.632-97.056 0-176-78.976-176-176 0-58.4 28.832-112.768 77.12-145.472 5.472-3.712 8.096-10.4 6.624-16.832S285.638 2.4 279.078 1.44C271.59.352 264.134 0 256.646 0c-132.352 0-240 107.648-240 240s107.648 240 240 240c84 0 160.416-42.688 204.352-114.176 3.552-5.792 3.04-13.184-1.216-18.496z"/></svg>
            <img class="cs-sun" aria-hidden="true" src="https://csimg.nyc3.cdn.digitaloceanspaces.com/Icons%2Fsun.svg" decoding="async" alt="moon" width="15" height="15">
        </button>
         -->
    </div>
</header>
                                



	<div class="main-content" style="min-height: 100vh; margin-bottom: 3rem;">
	
		<!-- Section: Design Block -->
<section class="text-center">
  <!-- Background image -->
  <div class="p-5 bg-image" style="
        background-image: url('https://mdbootstrap.com/img/new/textures/full/171.jpg');
        height: 300px;
        "></div>
  <!-- Background image -->

  <div class="card mx-4 mx-md-5 shadow-5-strong bg-body-tertiary" style="
        margin-top: -100px;
        backdrop-filter: blur(30px);
        ">
    <div class="card-body py-5 px-md-5">

      <div class="row d-flex justify-content-center">
        <div class="col-lg-8">
          <h2 class="fw-bold mb-5">Log In now</h2>
          <form>

            <!-- Email input -->
            <div data-mdb-input-init class="form-outline mb-4">
              <input type="email" id="form3Example3" class="form-control" />
              <label class="form-label" for="form3Example3">Email address</label>
            </div>

            <!-- Password input -->
            <div data-mdb-input-init class="form-outline mb-4">
              <input type="password" id="form3Example4" class="form-control" />
              <label class="form-label" for="form3Example4">Password</label>
            </div>


            <!-- Submit button -->
            <button type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-block mb-4">
              Sign In
            </button>

            <!-- Register buttons -->
            <div class="text-center">
              <p>Don't have an account ? <a href="/jsp-servlet-jdbc/register.jsp"><strong style="text-decoration: none;">Sign Up</strong></a></p>
              <!-- 
              <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-link btn-floating mx-1">
                <i class="fab fa-facebook-f"></i>
              </button>

              <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-link btn-floating mx-1">
                <i class="fab fa-google"></i>
              </button>

              <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-link btn-floating mx-1">
                <i class="fab fa-twitter"></i>
              </button>

              <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-link btn-floating mx-1">
                <i class="fab fa-github"></i>
              </button>
               -->
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Section: Design Block -->
		
	</div>
	
	
	
	<!-- ============================================ -->
<!--                  Footer                      -->
<!-- ============================================ -->

<footer id="footer-1147">
    <div class="cs-container">
        <div class="cs-top">
            <a aria-label="go back to home" class="cs-logo" href="">
                <img class="cs-logo-img" loading="lazy" decoding="async" src="https://csimg.nyc3.cdn.digitaloceanspaces.com/Logos/charity-logo.svg" alt="logo" width="168" height="48">
            </a>
            <ul class="cs-ul">
                <li class="cs-li">
                    <a href="" class="cs-link">Home</a>
                </li>
                <li class="cs-li">
                    <a href="" class="cs-link">About</a>
                </li>
                <li class="cs-li">
                    <a href="" class="cs-link">Services</a>
                </li>
                <li class="cs-li">
                    <a href="" class="cs-link">Donations</a>
                </li>
                <li class="cs-li">
                    <a href="" class="cs-link">Events</a>
                </li>
                <li class="cs-li">
                    <a href="" class="cs-link">Blog</a>
                </li>
                <li class="cs-li">
                    <a href="" class="cs-link">Contact</a>
                </li>
            </ul>
        </div>
        <div class="cs-bottom">
            <!--Social-->
            <ul class="cs-social">
                <li class="cs-social-li">
                    <a href="" class="cs-social-link" aria-label="facebook" target="_blank" rel="noopener">
                        <img class="cs-social-icon cs-default" src="https://csimg.nyc3.cdn.digitaloceanspaces.com/Icons/facebook-white.svg" alt="icon" loading="lazy" decoding="async" width="12" height="12" aria-hidden="true">
                    </a>
                </li>
                <li class="cs-social-li">
                    <a href="" class="cs-social-link" aria-label="twitter" target="_blank" rel="noopener">
                        <img class="cs-social-icon cs-default" src="https://csimg.nyc3.cdn.digitaloceanspaces.com/Icons/twitter-white.svg" alt="icon" loading="lazy" decoding="async" width="12" height="12" aria-hidden="true">
                    </a>
                </li>
                <li class="cs-social-li">
                    <a href="" class="cs-social-link" aria-label="instagram" target="_blank" rel="noopener">
                        <img class="cs-social-icon cs-default" src="https://csimg.nyc3.cdn.digitaloceanspaces.com/Icons/instagram-transparent.svg" alt="icon" loading="lazy" decoding="async" width="12" height="12" aria-hidden="true">
                    </a>
                </li>
                <li class="cs-social-li">
                    <a href="" class="cs-social-link" aria-label="twitter" target="_blank" rel="noopener">
                        <img class="cs-social-icon cs-default" src="https://csimg.nyc3.cdn.digitaloceanspaces.com/Icons/youtube-transparent2.svg" alt="icon" loading="lazy" decoding="async" width="12" height="12" aria-hidden="true">
                    </a>
                </li>
            </ul>
            <span class="cs-copyright">
                © Copyright 2023 - <a href="" class="cs-copyright-link">Stitch Non-profit Charity</a>
            </span>
        </div>
    </div>
    <!--Background-->
    <picture class="cs-background">
        <!--Mobile Image-->
        <source media="(max-width: 600px)" srcset="https://csimg.nyc3.cdn.digitaloceanspaces.com/Images/People/kids2.jpg">
        <!--Tablet and above Image-->
        <source media="(min-width: 601px)" srcset="https://csimg.nyc3.cdn.digitaloceanspaces.com/Images/People/kids2.jpg">
        <img loading="lazy" decoding="async" src="https://csimg.nyc3.cdn.digitaloceanspaces.com/Images/People/kids2.jpg" alt="kids" width="1280" height="568">
    </picture>
</footer>
                                
                                
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	<script src="./scripts/pageStructure.js"></script>
</body>
</html>