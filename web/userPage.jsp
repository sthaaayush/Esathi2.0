<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Esathi - User Page</title>
        <style>
            body {
                background-image: url("background.png");
            }

            .logo {
                border: 1px solid black;
                height: 150px;
                width: 150px;
                border-radius: 50%;
            }

            .logo_img {
                height: 150px;
                width: 150px;
                border-radius: 50%;
            }

            .viewer_page {
                border: 1px black solid;
                padding: 7px;
                background-color: aquamarine;
                text-decoration: none;
                color: black;
                border-radius: 20%;
                margin-right: 50px;
            }

            .game1 {
                border: 1px black solid;
                padding: 7px;
                background-color: aquamarine;
                text-decoration: none;
                color: black;
                border-radius: 20%;
                margin-right: 50px;
            }

            .contact {
                border: 1px black solid;
                padding: 7px;
                background-color: aquamarine;
                text-decoration: none;
                color: black;
                border-radius: 20%;
                margin-right: 50px;
            }

            .home {
                border: 1px black solid;
                padding: 7px;
                background-color: aquamarine;
                text-decoration: none;
                color: black;
                border-radius: 20%;
                margin-right: 50px;
            }

            .lout {
                border: 1px black solid;
                padding: 7px;
                background-color: aquamarine;
                text-decoration: none;
                color: black;
                border-radius: 20%;
            }

            .header_left {
                display: flex;
                justify-content: end;
                align-items: flex-end;
            }

            .bottom_body {
                height: 80%;
                position: absolute;
                width: 90%;
                margin-top: 20px;
            }

            .sidebar {
                position: absolute;
                border: 1px black solid;
                border-radius: 16px;
                width: 10%;
                height: 100%;
            }

            .chatbox {
                position: absolute;
                border-radius: 40px;
                left: 20%;
                width: 90%;
                height: 100%;
            }

            .sidebar a {
                text-decoration: none;
                background-color: aquamarine;
                color: black;
                width: 81px;
                float: left;
                height: 10px;
                display: flex;
                justify-content: center;
                align-items: center;
                border-radius: 15px;
                border-bottom: 1px black solid;
                border-top: 1px black solid;
                padding: 20px;
                margin-bottom: 20px;
            }

            .sidebar a:hover {
                background-color: white;
                text-shadow: 2px 2px 5px black;
            }


            /* Style the outer container. Centralize contents, both horizontally and vertically */
            #bot {
                height: 100%;
                width: 100%;
                background: #bcd6d3;
                display: flex;
                align-items: center;
                justify-content: center;
                box-shadow: 3px 3px 15px rgba(0, 0, 0, 0.2);
                border-radius: 20px;
            }

            /* Make container slightly rounded. Set height and width to 90 percent of .bots' */
            #container {
                height: 90%;
                border-radius: 6px;
                width: 90%;
                background: #F3F4F6;
            }

            /* Style body */
            #body {
                width: 100%;
                height: 90%;
                background-color: #bcd6d3;
                overflow-y: auto;
            }

            /* Style container for user messages */
            .userSection {
                width: 100%;
            }

            /* Seperates user message from bot reply */
            .seperator {
                width: 100%;
                height: 50px;
            }

            /* General styling for all messages */
            .messages {
                max-width: 60%;
                margin: .5rem;
                font-size: 1.2rem;
                padding: .5rem;
                border-radius: 7px;
            }

            /* Targeted styling for just user messages */
            .user-message {
                margin-top: 1rem;
                text-align: left;
                background: rgb(90 169 225);
                color: white;
                float: left;
            }

            /* Targeted styling for just bot messages */
            .bot-reply {
                text-align: right;
                background: #E5E7EB;
                margin-top: 1rem;
                float: right;
                color: black;
                box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
            }

            /* Style the input area */
            #inputArea {
                height: 10%;
                padding: 1rem;
                background: #bcd6d3;
            }

            /* Style the text input */
            #userInput {
                height: 25px;
                width: 75%;
                background-color: white;
                border-radius: 35px;
                padding: 1rem;
                font-size: 1rem;
                border: none;
                outline: none;
                box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
            }

            /* Style send button */
            #send {
                font-size: 2.5rem;
                text-align: center;
                width: 20%;
                color: white;
                background: #3B82F6;
                cursor: pointer;
                border: none;
                border-radius: 35px;
                box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
                float: right;
                height: 56px;
            }

            #send:hover {
                text-shadow: 6px 6px 3px cyan;
            }

            .form {
                border-radius: 35px;
                background: white;
            }

            .header_left a:hover {
                background: whitesmoke;
                text-shadow: 2px 2px 5px grey;
            }
        </style>
    </head>

    <body>
        <!-- Header with Navigation -->
        <div class="header">
            <div class="logo">
                <img src="esathi.jpg" alt="LOGO">
            </div>
            <div class="header_left">
                <a href="viewPage.jsp">Viewer</a>
                <a href="game1_ngg.jsp">Game1</a>
                <a href="#">Contact</a>
                <a href="homePage.jsp">Home</a>
                <a href="loginPage.jsp">LogOut</a>
            </div>
        </div>

        <!-- Sidebar for Navigation Links -->
        <div class="sidebar">
            <a href="#">CHECK</a>
            <a href="#">E-BOOKS</a>
            <a href="#">VIDEOS</a>
            <a href="#">ARTICLES</a>
            <a href="../quiz/quizPage.jsp">QUIZ</a>
        </div>

        <!-- Chatbox -->
        <div class="chatbox">
            <div id="bot">
                <div id="body">
                    <div class="messages user-message">
                        <%= request.getAttribute("userMessage") %>
                    </div>
                    <div class="messages bot-reply">
                        <%= request.getAttribute("botReply") %>
                    </div>
                </div>
                <div id="inputArea">
                    <form action="ViewPageServlet" method="post">
                        <input type="text" id="userInput" name="userInput" placeholder="Confess Here..." required>
                        <button id="send" type="submit">➤</button>
                    </form>
                </div>
            </div>
        </div>
    </body>

    </html>