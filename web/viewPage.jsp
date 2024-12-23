<%@ page import="java.util.*, javax.servlet.*, javax.servlet.http.*, java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Esathi.ViewerPage</title>
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
            .user_page{
                border: 1px black solid;
                padding: 7px;
                background-color: aquamarine;
                text-decoration: none;
                color: black;
                border-radius: 20%;
                margin-right: 50px;
            }

            .about {
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
                margin-right: 30px;
            }
            
            .header_left a:hover{
                background: whitesmoke;
                text-shadow: 2px 2px 5px grey;
            }
            
            .bottom_body{
                height: 80%;
                position: relative;
                width: 90%;
                margin-top:20px ;
            }
            .chatbox{
                position: absolute;
                border-radius: 40px;
                width: 111%;
                height: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            /* Style the outer container. Centralize contents, both horizontally and vertically */
            #bot {
                height: 100%;
                width: 70%;
                background: #F3F4F6;
                box-shadow: 3px 3px 15px rgba(0, 0, 0, 0.2);
                overflow: scroll;
                border-radius: 20px;
            }

            /* Make container slightly rounded. Set height and width to 90 percent of .bots' */
            #container {
                border-radius: 6px;
            }

            /* Style body */
            #body {
                width: 100%;
                height: fit-content;
                background-color: #F3F4F6;
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
                width: 55%;
            }

            /* Targeted styling for just bot messages */
            .bot-reply {
                text-align: right;
                background: #26c15891;
                margin-top: 1rem;
                float: right;
                width: 650px;
                color: black;
                box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
            }

            .respond_button {
                border: black 1px solid;
                background-color: white;
                width: fit-content;
                float: right;
                border-radius: 7px;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <div class="logo">
                <img src="esathi.jpg" alt="LOGO" class="logo_img">
            </div>
            <div class="header_left">
                <a href="userPage.html" class="user_page">User</a>
                <a href="#" class="about">About</a>
                <a href="#" class="contact">Contact</a>
                <a href="homePage.html" class="home">Home</a>
                <a href="loginPage.jsp" class="lout">LogOut</a>
            </div>
        </div>

        <div class="bottom_body">
            <div class="chatbox">
                <div id="bot">
                    <div id="container">
                        <div id="body">
                            <div class="userSection">
                                <c:forEach var="message" items="${messages}">
                                    <div class="messages user-message">${message}</div>
                                    <br>
                                    <div class="seperator"></div>
                                </c:forEach>
                            </div>

                            <div class="botSection">
                                <c:forEach var="response" items="${responses}">
                                    <div class="messages bot-reply">${response}</div>
                                    <div class="seperator"></div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
