<div class="navbar">
    <div class="navbar-inner">
        <div class="container-fluid">
            <!-- Hamburger menu for mobile view -->
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>

            <!-- Navbar items -->
            <div class="nav-collapse collapse">
                <ul class="nav" id="footer_nav">
                    <li class="divider-vertical"></li>
                    <li class="active">
                        <a href="index.php" class="nav-item home-item"><i class="icon-home"></i>&nbsp;Home</a>
                    </li>
                    <?php include('directories.php'); ?>
                    <li class="divider-vertical"></li>
                    <li>
                        <a href="#campuses" data-toggle="modal" class="nav-item campuses-item"><i class="icon-building"></i>&nbsp;Campuses</a>
                    </li>
                    <?php include('campuses.php'); ?>
                    <li class="divider-vertical"></li>
                    <li>
                        <a href="developers.php" class="nav-item developer-item"><i class="icon-user"></i>&nbsp;Developer</a>
                    </li>
                    <li class="divider-vertical"></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>

<!-- CSS for Navbar and button styling -->
<style>
    /* General Navbar Styling */
    .navbar {
        background-color: #0066cc; /* Primary background color for navbar */
        border: none;
        margin-bottom: 0;
        border-radius: 10px;
		width:650px;
		height:70px;
    }

    .navbar .navbar-inner {
        padding: 10px;
    }

    .nav-item {
        color: blue !important; /* White color for links */
        font-weight: bold;
        padding: 12px 20px;
        border-radius: 90px; /* Increased border radius for rounded buttons */
        transition: all 0.3s ease; /* Smooth transition for hover effect */
        display: inline-block;
        margin: 5px 10px;
		width:auto;
		height:auto;
        text-align: center;
        background: rgba(0, 0, 0, 0.1); /* Transparent background with slight opacity */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Subtle shadow effect */
    }

    .nav-item:hover {
        background-color: #dc3545; /* Hover background color */
        color: #fff !important;
        text-decoration: none;
        transform: scale(1.1); /* Slight scale effect on hover */
    }

    .nav-item:active {
        transform: scale(1.05) rotate(5deg); /* Tilt effect when button is pressed */
    }

    /* Navbar Item Divider */
    .divider-vertical {
        border-left: 2px solid #fff;
    }

    /* Active link styling */
    .nav .active > .nav-item {
        background-color: #28a745; /* Active background color */
        color: #fff !important;
    }

    .nav-item:focus, .nav-item:active {
        outline: none;
    }

    /* Mobile Hamburger Menu Button */
    .btn-navbar {
        background-color: #0066cc;
        border: none;
    }

    .icon-bar {
        background-color: #fff;
    }

    /* Container for the navbar */
    .container-fluid {
        padding-left: 15px;
        padding-right: 15px;
        text-align: center; /* Centering navbar items */
    }

    /* Specific Item Styling */
    .home-item {
        background-color: ab5a21; /* Transparent blue background */
    }

    .campuses-item {
        background-color: ab5a21; /* Transparent green background */
    }

    .developer-item {
        background-color: ab5a21; /* Transparent yellow background */
    }

    /* Hover and active states for all buttons */
    .home-item:hover, .campuses-item:hover, .developer-item:hover {
        background-color: ab5a21; /* Red background on hover for all buttons */
    }

    /* Tilt effect */
    .nav-item:active {
        transform: scale(1.05) rotate(5deg); /* Tilt effect on button click */
        transition: transform 0.1s ease; /* Smooth transition for tilt */
    }

    /* Responsive Navbar */
    @media (max-width: 768px) {
        .navbar {
            background-color: #005bb5;
        }
    }
</style>
