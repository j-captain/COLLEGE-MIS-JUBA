<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<body>
    <?php include('navbar_student.php'); ?>
    <div class="container-fluid">
        <div class="row-fluid">
            <?php include('backpack_sidebar.php'); ?>
            <div class="span9" id="content">
                <div class="row-fluid">
                    <!-- breadcrumb -->    
                    <ul class="breadcrumb">
                        <?php
                        $school_year_query = mysqli_query($conn,"select * from school_year order by school_year DESC")or die(mysqli_error());
                        $school_year_query_row = mysqli_fetch_array($school_year_query);
                        $school_year = $school_year_query_row['school_year'];
                        ?>
                            <li><a href="#"><b>My Class</b></a><span class="divider">/</span></li>
                        <li><a href="#">School Year: <?php echo $school_year_query_row['school_year']; ?></a><span class="divider">/</span></li>
                        <li><a href="#"><b>Backpack</b></a></li>
                    </ul>
                <!-- end breadcrumb -->
                <!-- block -->
                <div id="block_bg" class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-right"></div>
                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">
                            <h2>Fee Payment</h2>
                            <!-- Form to Pay Fee -->
                            <form action="" method="post"> <!-- Form posts to the same page -->
                                <div class="control-group">
                                    <label for="amount">Enter Amount to Pay:</label>
                                    <input type="number" name="amount" class="form-control" placeholder="Enter amount in KES" required>
                                </div>
                                <div class="control-group">
                                    <label for="payment_mode">Payment Mode:</label>
                                    <select name="payment_mode" class="form-control" required>
                                        <option value="M-Pesa">M-Pesa</option>
                                        <option value="Bank Transfer">Bank Transfer</option>
                                        <option value="Cash">Cash</option>
                                    </select>
                                </div>
                                <button type="submit" name="submit_payment" class="btn btn-success">Pay Now</button>
                            </form>

                            <?php
                            // Check if the form was submitted
                            if (isset($_POST['submit_payment'])) {
                                // Get form data
                                $amount = $_POST['amount'];
                                $payment_mode = $_POST['payment_mode'];
                                $student_id = $session_id; // Assuming session_id contains student_id

                                // Fetch current outstanding fee of the student
                                $balance_query = mysqli_query($conn, "SELECT outstanding_fee FROM student_fees WHERE student_id = '$student_id'") or die(mysqli_error($conn));

                                if ($balance_query) {
                                    if (mysqli_num_rows($balance_query) > 0) {
                                        $balance_row = mysqli_fetch_array($balance_query);
                                        $current_balance = $balance_row['outstanding_fee'];
                                    } else {
                                        $current_balance = 0; // No balance found
                                    }
                                } else {
                                    // If the query failed
                                    echo "<div class='alert alert-danger'>Error fetching balance. Please try again later.</div>";
                                }

                                // Calculate new balance after payment
                                $new_balance = $current_balance - $amount;

                                // Insert fee transaction into the database
                                $transaction_date = date('Y-m-d H:i:s'); // Current date and time
                                $query = "INSERT INTO fees_transaction (student_id, amount, payment_date, payment_method, status) 
                                          VALUES ('$student_id', '$amount', '$transaction_date', '$payment_mode', 'Successful')";
                                
                                if (mysqli_query($conn, $query)) {
                                    // Update outstanding_fee and total_paid in student_fees table
                                    $update_balance_query = "UPDATE student_fees 
                                                             SET total_paid = total_paid + '$amount', 
                                                                 outstanding_fee = '$new_balance' 
                                                             WHERE student_id = '$student_id'";
                                    mysqli_query($conn, $update_balance_query);

                                    // Display success message
                                    echo "<div class='alert alert-success'>Payment of KES " . number_format($amount, 2) . " successfully made! Your new balance is KES " . number_format($new_balance, 2) . "</div>";
                                } else {
                                    // If query fails, show an error
                                    echo "<div class='alert alert-danger'>Error processing payment. Please try again later.</div>";
                                }
                            }
                            ?>

                            <hr>

                            <h2>Total Balance</h2>
                            <?php
                            // Fetch current outstanding balance from student_fees table
                            $balance_query = mysqli_query($conn, "SELECT outstanding_fee FROM student_fees WHERE student_id = '$session_id'") or die(mysqli_error($conn));
                            
                            if ($balance_query) {
                                if (mysqli_num_rows($balance_query) > 0) {
                                    $balance_row = mysqli_fetch_array($balance_query);
                                    $current_balance = $balance_row['outstanding_fee'];
                                } else {
                                    // No balance found, set to 0
                                    $current_balance = 0;
                                }
                            } else {
                                // If the query failed
                                echo "<div class='alert alert-danger'>Error fetching balance. Please try again later.</div>";
                            }

                            // Fetch total payments from the fee_transactions table
                            $total_paid_query = mysqli_query($conn, "SELECT SUM(amount) as total_paid FROM fees_transaction WHERE student_id = '$session_id'") or die(mysqli_error($conn));
                            
                            if ($total_paid_query) {
                                $total_paid_row = mysqli_fetch_array($total_paid_query);
                                $total_paid = $total_paid_row['total_paid'] ? $total_paid_row['total_paid'] : 0;
                            } else {
                                // If the query failed
                                echo "<div class='alert alert-danger'>Error fetching payment history. Please try again later.</div>";
                                $total_paid = 0;
                            }

                            // Calculate the total balance (outstanding_fee + total_paid)
                            $total_balance = $current_balance + $total_paid;
                            ?>

                            <p><strong>Your total balance is: KES <?php echo number_format($total_balance, 2); ?></strong></p>

                            <hr>

                            <h2>Fee Statement</h2>
                            <?php
                            $statement_query = mysqli_query($conn, "SELECT * FROM fees_transaction WHERE student_id = '$session_id' ORDER BY payment_date DESC") or die(mysqli_error($conn));
                            if (mysqli_num_rows($statement_query) > 0) {
                            ?>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Amount Paid</th>
                                            <th>Payment Method</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        while ($row = mysqli_fetch_array($statement_query)) {
                                            echo "<tr>";
                                            echo "<td>" . $row['payment_date'] . "</td>";
                                            echo "<td>KES " . number_format($row['amount'], 2) . "</td>";
                                            echo "<td>" . $row['payment_method'] . "</td>";
                                            echo "<td>" . $row['status'] . "</td>";
                                            echo "</tr>";
                                        }
                                        ?>
                                    </tbody>
                                </table>
                                <button onclick="window.print()" class="btn btn-primary">Print Statement</button>
                            <?php } else { ?>
                                <div class="alert alert-info"><i class="icon-info-sign"></i> No transactions found.</div>
                            <?php } ?>
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
