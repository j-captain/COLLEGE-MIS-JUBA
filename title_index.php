<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Juba University Of Technology</title>
    <style>
        /* Global Styles */
        body{
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
            height: 100%;
            position: relative;
        }

        .ccontainer {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            position: relative;
            min-height: 100vh; /* Ensure container takes full height of viewport */
        }

        .row-fluid {
            display: flex;
            margin-bottom: 20px;
        }

        .span12 {
            width: 100%;
        }

        .span4 {
            width: 33.33%;
            padding: 10px;
        }

        .span8 {
            width: 66.66%;
            padding: 10px;
        }

        /* Logo Image - Make it smaller and more captivating */
        .index_logo {
            width: 100%; /* Adjusted to make it smaller */
            max-width: 300px; /* Maximum size */
            height: auto;
            border-radius: 15px; /* Rounded corners for a soft look */
            transition: transform 0.3s ease-in-out; /* Smooth transition on hover */
        }

        .index_logo:hover {
            transform: scale(1.1); /* Slight zoom effect on hover */
        }

        /* Title Section */
        .title-container {
			width:300px;
			height:auto;
            background-color: #2173ab; /* Background color for title */
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .title-container:hover {
            background-color: #004c99; /* Darker shade on hover */
            transform: translateY(-5px); /* Lift effect on hover */
        }

        .title {
            font-size: 10px;
            color: #fff;
            transition: color 0.3s ease;
			font-family: "Times New Roman", Times, serif;
        }

        .title-container:hover .title {
            color: #f0f0f0; /* Change text color on hover */
        }

        .chmsc {
            font-size: 28px;
            color: #ffffff;
            text-transform: uppercase;
            margin: 0;
            text-align: left;
        }

        /* Motto Section - Make it more captivating */
        .cmotto {
            font-size: 20px;
            font-style: italic;
            color: #ffffff;
            background-color: #0066cc; /* Background color to make it stand out */
            text-align: center;
            padding: 20px;
            position: absolute;
            bottom: 0;
            width: 100%;
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-shadow: 1px 1px 2px #999;
            transition: background-color 0.3s ease, transform 0.3s ease; /* Smooth transition */
        }

        .cmotto:hover {
            background-color: #004c99; /* Darker shade on hover */
            transform: translateY(-5px); /* Lift effect on hover */
        }

        .cmotto p {
            margin: 5px 0;
        }
    </style>
</head>
<body>

    <div class="ccontainer">
        <!-- Header Row -->
        <div class="row-fluid">
            <div class="span12">
                <!-- Empty header row for spacing -->
            </div>
        </div>

        <!-- Logo and Title Row -->
        <div class="row-fluid">
            <div class="span4">
                <img class="index_logo" src="admin/images/juba.JPG" alt="Juba University Logo">
            </div>
            <div class="span8">
                <div class="title-container">
                    <p class="title chmsc">Juba University Of Technology</p>
                </div>
            </div>
        </div>

        <!-- Motto Section -->
        <div class="row-fluid">
            <div class="span12">
                <div class="cmotto">
                    <p>Excellence, Competence and Educational</p>
                    <p>Leadership in Science and Technology</p>
                </div>
            </div>
        </div>

    </div>

</body>
</html>
