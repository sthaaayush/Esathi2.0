<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Esathi-LogIn</title>
        <style>
            body{
                background-image: url("background.png");
            }
            form {
                font-size: 25px;
                font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                width: 100%;
                height: 645px;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .errorMsg{
                width: 100%;
                height:40px ;
                float: left;
                display: flex;
                justify-content: center;
                align-items: center;
                color: red;
                font-size: 15px;
            }
            .contain {
                height: 300px;
                width: 300px;
                margin-top: 125px;
            }

            .contains{
                border: 2px solid blue;
                border-radius: 20px;
                background-color: blanchedalmond;
            }

            .uname,
            .pass,
            .signin,.reg{
                width: 300px;
                float: left;
                display: flex;
                justify-content: center;
                align-items: center;
                margin: 30px;
            }

            .pass{
                margin-bottom: 0px;
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
            .reg{
                font-size: 15px;
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
            a{
                text-decoration: none;
                color: mediumblue;
            }
            a:hover{
                color: blueviolet;
                text-shadow: 2px 2px 5px blue;
            }
            .reg{
                font-size: 20px;
            }
        </style>
    </head>

    <body>
        <div class="header">
            <div class="logo">
                <img src="esathi.jpg" alt="LOGO" class="logo_img">
            </div>
        </div>
    <center>
        <form action="logexe" method="post" class="contain">
            <div class="contains">
                <div class="uname">
                    <label for="uname">Username:</label>
                    <input type="text" name="uname" class="field" placeholder="UserName" required>
                </div>
                <br>
                <div class="pass">
                    <label for="pass">Password:</label>
                    <input type="password" name="pass" class="field" placeholder="Secret Code" required><br>
                </div>
                <div class="errorMsg">
                    <%if (request.getMethod().equalsIgnoreCase("post")) {
                            out.print(request.getAttribute("errorMsg"));
                        }%>
                </div>
                <div class=signin>
                    <input type="submit" value="Login" name="flag" class="signField">
                </div>
                <div class="reg">New here?<a href="registerPage.jsp">Get Known</a></div>
            </div>
        </form>
    </center>
</body>
</html>