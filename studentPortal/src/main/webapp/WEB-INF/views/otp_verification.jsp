<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>OTP Verification</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
    <h1>OTP Verification</h1>
    <form id="otpForm">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <button type="button" id="sendOtpBtn">Send OTP</button>
    </form>
    <br>
    <div id="otpSection" style="display: none;">
        <label for="otp">Enter OTP:</label>
        <input type="text" id="otp" name="otp" required>
        <button type="button" id="verifyOtpBtn">Verify OTP</button>
    </div>
    <div id="result" style="color: green; margin-top: 20px;"></div>
    <script>
        $(document).ready(function() {
            // Send OTP
            $('#sendOtpBtn').click(function() {
                const email = $('#email').val();
                if (!email) {
                    alert("Please enter your email.");
                    return;
                }
                $.ajax({
                    url: '/otp',
                    type: 'POST',
                    contentType: 'application/json',
                    data: JSON.stringify({ email: email }),
                    success: function(response) {
                        alert("OTP sent to your email.");
                        $('#otpSection').show();
                    },
                    error: function() {
                        alert("Error sending OTP. Please try again.");
                    }
                });
            });

            // Verify OTP
            $('#verifyOtpBtn').click(function() {
                const otp = $('#otp').val();
                const email = $('#email').val();
                if (!otp) {
                    alert("Please enter the OTP.");
                    return;
                }
                $.ajax({
                    url: '/verifyotp',
                    type: 'POST',
                    contentType: 'application/json',
                    data: JSON.stringify({ email: email, otp: otp }),
                    success: function(response) {
                        if (response.valid) {
                            $('#result').html("OTP verified successfully! Redirecting...");
                            setTimeout(function() {
                                window.location.href = "/newpassword"; // Redirect to password reset page
                            }, 2000);
                        } else {
                            $('#result').html("Invalid OTP. Please try again.");
                        }
                    },
                    error: function() {
                        alert("Error verifying OTP. Please try again.");
                    }
                });
            });
        });
    </script>
</body>
</html>
