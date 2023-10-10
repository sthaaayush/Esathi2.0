<%-- 
    Document   : game1_ngg
    Created on : Jul 14, 2023, 10:27:44 AM
    Author     : aayus
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guess The Number</title>
        <style>
            body{
                background-image: url("background.png");
            }
            .contain {
                font-size: 25px;
                font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                height: 300px;
                width: 300px;
                margin-top: 125px;
                display: flex;
                justify-content: center;
                align-items: center;
                

            }

            .contains{
                border: 2px solid blue;
                border-radius: 20px;
                background-color: blanchedalmond;
                height: 300px;
            }

            .gNum,
            .msg{
                width: 300px;
                float: left;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 0px;
            }

            .msg{
                margin-bottom: 0px;
                height: 100px;
                animation: flip-in-hor-bottom 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940);
            }

            .field {
                height: 25px;
                border-radius: 5px;
                margin-left: 4px;
                font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            }

            .signField {
                width: 90px;
                padding: 4px;
                border-radius: 10px;
                background-color: cadetblue;
                font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            }

            .signField:hover {
                background-color: lightcyan;
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
            .utext{
                margin-top: 50px;
            }
        </style>
    </head>

    <div class="header">
        <div class="logo">
            <img src="esathi.jpg" alt="LOGO" class="logo_img">
        </div>
    </div>

    <center>
        <form action="#" method="post" class="contain">
            <div class="contains">
                <div class="utext">Enter Your Guess</div><br>
                <div class="gNum">
                    <input type="text" name="gNum" class="field" placeholder="Guess it(0-49)" required>                    
                </div>
                <br>
                <div class="msg" >
                    <%
                        Random rd = new Random();
                        if (request.getMethod().equalsIgnoreCase("post")) {
                            int rnum = Integer.parseInt(request.getParameter("gNum"));
                            if (rnum == rd.nextInt(50)) {
                                out.print("<b style=color:purple;>Well!! You Are Correct</b>");
                            } else {
                                out.print("<b style=color:red;>Ouuuu!! Thats the wrong guess</b>");
                            }
                        }
                    %>
                </div>
                <input type="submit" value="Let's See" name="flag" class="signField">
            </div>
        </form>
    </center>
</body>
</html>
