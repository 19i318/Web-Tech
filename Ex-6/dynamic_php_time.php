<!DOCTYPE html>
<html>
    <head>

        <title> Time Display </title>
    </head>

    <body>
        <h1> Time Display </h1>

        <?php
            echo(strftime("%B %d %Y, %X %Z", time())."<br>");
        ?>
    </body>
</html>