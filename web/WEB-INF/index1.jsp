<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TTS</title>
    <style>
        #page {width: 1080px; height: 720px; margin: 0 auto; text-align: center; background-color: antiquewhite;}
        #test {height: 80px;}
        #directionMark {font-weight: bolder; animation: 1s mark infinite;}
        @keyframes mark {
            to {padding-top: 30px;}
        }
        #file {background-color: white; height: 300px; width: 500px;}
        #file:hover {border: 1px solid black;}
    </style>
</head>
<body>
    <div id="page">
        <h2><em>Team. </em>MTB</h2>
        <hr>
        <h3>File Reading Program Using TTS</h3>
        <div id="test">
            <p>File Input!!</p>
            <p id="directionMark">&#8595; &#8595; &#8595;</p>
        </div>
        <br>
        <form action="fileUpload.jsp" method="post" enctype="multipart/form-data">
            <input type="file" id="file" name="uploadFile">
            <input type="submit" value="enter">
        </form>
    </div>
</body>
</html>