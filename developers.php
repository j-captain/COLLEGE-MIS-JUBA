<?php include('header_dashboard.php'); ?>

<body id="class_div" style="background-color: brown; padding-top: 20px;">
    <?php include('navbar_about.php'); ?>
    <div class="container-fluid" style="background-color: green; padding-top: 20px;">
        <div class="row-fluid">
            <div class="span12" id="content">
                <div class="row-fluid">
                    <!-- block -->
                    <div class="block">
                        <div class="navbar navbar-inner block-header">
                            <div class="muted pull-right"><a href="index.php"><i class="icon-arrow-left"></i> Back</a></div>
                        </div>
                        <div class="block-content collapse in">
                            <h3 style="text-decoration: underline;">Developer Panel</h3>
                            <hr>
                            <div class="span3">
                                <center>
                                    <img id="developers" src="admin/images/ilham.jpg" class="img-circle" style="width: 200px; height: 200px; object-fit: cover;">
                                    <hr>
                                    <p><strong>Name:</strong> Ilham Mohamed Hassan</p>
                                    <p><strong>Address:</strong> <em>P.O BOX 27691-00506</em></p>
                                    <p><strong>Phone:</strong> <a href="tel:+254701210882" id="phoneLink" onclick="showConfirmation('phone', event)">0701210882</a></p>
                                    <p><strong>Email:</strong> <a href="mailto:ilhamankey@gmail.com" id="emailLink" onclick="showConfirmation('email', event)">ilhamankey@gmail.com</a></p>
                                    <p><strong>WhatsApp:</strong> <a href="https://wa.me/254701210882" id="whatsappLink" onclick="showConfirmation('whatsapp', event)">Chat with me on WhatsApp</a></p>
                                    <p><strong>Position:</strong> System Developer</p>
                                    <p><strong>Just a piece of my art:</strong> <a href="https://j-captain.github.io/KARANJA-PORTFOLIO/" target="_blank" id="githubLink" onclick="showConfirmation('github', event)" style="color: #0066cc;">Satisfied client</a></p>
                                </center>
                            </div>
                            <hr>
                            <!-- Contact Form Section -->
                            <div class="span9">
                                <h4>Contact the Developer</h4>
                                <form action="mailto:ilhamankey@gmail.com" method="post" enctype="text/plain">
                                    <div class="form-group">
                                        <label for="name">Name:</label>
                                        <input type="text" id="name" name="name" class="form-control" placeholder="Enter your name" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email:</label>
                                        <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="message">Message:</label>
                                        <textarea id="message" name="message" class="form-control" rows="4" placeholder="Your message" required></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Send Message</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- /block -->
                </div>
            </div>
        </div>
        <?php include('footer.php'); ?>
    </div>
    <?php include('script.php'); ?>
</body>
</html>

<!-- JavaScript for the confirmation prompt -->
<script type="text/javascript">
    function showConfirmation(type, event) {
        let message = '';
        if (type === 'phone') {
            message = 'You are about to open your phone dialer. Do you want to proceed?';
        } else if (type === 'email') {
            message = 'You are about to open your email client. Do you want to proceed?';
        } else if (type === 'whatsapp') {
            message = 'You are about to open WhatsApp. Do you want to proceed?';
        } else if (type === 'github') {
            message = 'You are about to visit a GitHub portfolio page. Do you want to proceed?';
        }

        const userConfirmed = confirm(message);

        // If the user chooses "Cancel", prevent the default action
        if (!userConfirmed) {
            event.preventDefault(); // This prevents the link from being followed if the user cancels
        }
    }
</script>

<!-- CSS for the hover color effect -->
<style>
    a {
        color: #28a745; /* Green color for links */
        text-decoration: none;
        transition: color 0.3s ease, text-decoration 0.3s ease;
    }

    a:hover {
        color: #dc3545; /* Red color on hover */
        text-decoration: underline; /* Underline effect on hover */
    }
</style>
