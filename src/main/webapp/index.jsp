<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up and Sign In</title>
<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }

    body {
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: 'Poppins', 'Segoe UI', sans-serif;
        background: linear-gradient(to bottom, #ff2e2e 0%, #7a0000 55%, #1a0000 100%);
    }

    .card {
        background: rgba(255, 255, 255, 0.1);
        backdrop-filter: blur(18px);
        -webkit-backdrop-filter: blur(18px);
        border: 1px solid rgba(255, 255, 255, 0.25);
        border-radius: 20px;
        padding: 45px 40px;
        width: 340px;
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.4);
        text-align: center;
        animation: floatUp 0.6s ease;
    }

    @keyframes floatUp {
        from { opacity: 0; transform: translateY(25px); }
        to   { opacity: 1; transform: translateY(0); }
    }

    .card h2 {
        color: #fff;
        font-size: 26px;
        margin-bottom: 6px;
        letter-spacing: 1px;
    }

    .card p.subtitle {
        color: rgba(255,255,255,0.75);
        font-size: 13px;
        margin-bottom: 28px;
    }

    .field {
        position: relative;
        margin-bottom: 22px;
        text-align: left;
    }

    .field input {
        width: 100%;
        padding: 12px 14px;
        background: rgba(255, 255, 255, 0.15);
        border: 1px solid rgba(255, 255, 255, 0.35);
        border-radius: 10px;
        color: #fff;
        font-size: 14px;
        outline: none;
        transition: all 0.25s ease;
    }

    .field input::placeholder {
        color: rgba(255, 255, 255, 0.7);
    }

    .field input:focus {
        background: rgba(255, 255, 255, 0.25);
        border-color: #fff;
        box-shadow: 0 0 12px rgba(255, 60, 60, 0.6);
    }

    .btn-row {
        display: flex;
        flex-direction: column;
        gap: 12px;
        margin-top: 30px;
    }

    .btn-row button {
        padding: 12px 0;
        border: none;
        border-radius: 10px;
        font-size: 14px;
        font-weight: 600;
        letter-spacing: 0.5px;
        cursor: pointer;
        transition: transform 0.15s ease, box-shadow 0.2s ease;
    }

    .btn-row button:hover {
        transform: translateY(-2px);
    }

    .btn-row button:active {
        transform: translateY(0);
    }

    #loginBtn {
        background: #ff2e2e;
        color: #fff;
        box-shadow: 0 4px 15px rgba(255, 46, 46, 0.5);
    }

    #signupBtn {
        background: transparent;
        color: #fff;
        border: 1.5px solid rgba(255,255,255,0.6) !important;
    }

    #displayBtn {
        background: rgba(0, 0, 0, 0.4);
        color: #fff;
    }
</style>
</head>
<body>

    <div class="card">
        <h2>Welcome Back</h2>
        <p class="subtitle">Sign in to continue or create an account</p>
        <form method="post">
            <div class="field">
                <input type="text" name="name" placeholder="Username">
            </div>
            <div class="field">
                <input type="password" name="pass" placeholder="Password">
            </div>
            <div class="btn-row">
                <button type="submit" id="loginBtn" formaction="Login.jsp">Login</button>
                <button type="submit" id="signupBtn" formaction="Signup.jsp">Create Account</button>
                <button type="submit" id="displayBtn" formaction="Display.jsp" formnovalidate>View All Users</button>
            </div>
        </form>
    </div>

</body>
</html>