<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Streaming Access App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }
        .container {
            max-width: 400px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            display: none;
            border-radius: 10px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
        }
        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        a {
            color: #007bff;
            text-decoration: none;
            display: block;
            margin: 10px 0;
        }
        a:hover {
            text-decoration: underline;
        }
        .streaming-links {
            margin-top: 20px;
        }
    </style>
    <script>
        let userData = {};

        function showPage(pageId) {
            document.querySelectorAll('.container').forEach(page => {
                page.style.display = 'none';
            });
            document.getElementById(pageId).style.display = 'block';
        }

        function handleRegistration(event) {
            event.preventDefault();
            const username = document.getElementById('regUsername').value;
            const email = document.getElementById('regEmail').value;
            const password = document.getElementById('regPassword').value;
            
            // Store user data (in real applications, you'd send this to a server)
            userData = { username, email, password };
            alert('Registration successful!');
            showPage('loginPage');
        }

        function handleLogin(event) {
            event.preventDefault();
            const username = document.getElementById('loginUsername').value;
            const password = document.getElementById('loginPassword').value;

            // Simple check (in real applications, you'd authenticate against a server)
            if (username === userData.username && password === userData.password) {
                alert('Login successful!');
                showPage('streamingPage');
            } else {
                alert('Invalid credentials. Please try again.');
            }
        }

        window.onload = function() {
            showPage('registrationPage');
        }
    </script>
</head>
<body>

    <!-- Registration Page -->
    <div id="registrationPage" class="container">
        <h2>Register</h2>
        <form onsubmit="handleRegistration(event)">
            <input type="text" id="regUsername" placeholder="Username" required>
            <input type="email" id="regEmail" placeholder="Email" required>
            <input type="password" id="regPassword" placeholder="Password" required>
            <input type="submit" value="Register">
        </form>
        <p>Already have an account? <a href="#" onclick="showPage('loginPage')">Login here</a></p>
    </div>

    <!-- Login Page -->
    <div id="loginPage" class="container">
        <h2>Login</h2>
        <form onsubmit="handleLogin(event)">
            <input type="text" id="loginUsername" placeholder="Username" required>
            <input type="password" id="loginPassword" placeholder="Password" required>
            <input type="submit" value="Login">
        </form>
        <p>Don't have an account? <a href="#" onclick="showPage('registrationPage')">Register here</a></p>
    </div>

    <!-- Streaming Links Page -->
    <div id="streamingPage" class="container">
        <h2>Welcome!</h2>
        <p>You can now access your favorite streaming platforms:</p>
        <div class="streaming-links">
            <a href="https://www.netflix.com" target="_blank">Go to Netflix</a>
            <a href="https://www.ibomma.net" target="_blank">Go to iBomma</a>
            <a href="https://www.movierulz.com" target="_blank">Go to Movie Rules</a>
            <a href="https://www.hotstar.com" target="_blank">Go to Disney+ Hotstar</a>
        </div>
    </div>

</body>
</html>
