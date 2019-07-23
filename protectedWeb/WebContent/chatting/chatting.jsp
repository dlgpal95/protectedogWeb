<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        #container {
            width: 400px;
            height: 400px;
            border: 1px solid black;
            background: ivory;
        }
        #chatView {
            height: 90%;
            overflow-y: scroll;
        }
        #chatForm {
            height: 10%;
            border-top: 1px solid black;
            text-align: center;
        }
        #msg {
            width: 80%;
            height: 32px;
            border-radius: 8px;
        }
        #send {
            width: 16%;
            height: 34px;
            border-radius: 50px;
            background: black;
            color: white;
        }
    .msgLine {
        margin: 15px;
    }
    .msgBox {
        border: 1px solid black;
        background: skyblue;
        padding: 2px 5px;
        border-radius: 10px;
    }        
    </style>
</head>
<body>
    <div id="container">
        <div id="chatView">
 
        </div>
        <form id="chatForm" onsubmit="return false">
            <input type="text" id="msg">
            <input type="submit" id="send" value="전송">
        </form>
    </div>
    
 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="/socket.io/socket.io.js"></script>
 
<script>
    var socket = io("http://localhost:82/");
        
    var chatView = document.getElementById('chatView');
    var chatForm = document.getElementById('chatForm');
 
    chatForm.addEventListener('submit', function() {
        var msg = $('#msg');
 
        if (msg.val() == '') {
            return;
                
        } else {
            socket.emit('SEND', msg.val());
 
            var msgLine = $('<div class="msgLine">');
            var msgBox = $('<div class="msgBox">');
 
            msgBox.append(msg.val());
            msgBox.css('display', 'inline-block');
 
            msgLine.css('text-align', 'right');
            msgLine.append(msgBox);
 
            $('#chatView').append(msgLine);
 
            msg.val('');
            chatView.scrollTop = chatView.scrollHeight;
        }
    });
 
    socket.on('SEND', function(msg) {
        var msgLine = $('<div class="msgLine">');
        var msgBox = $('<div class="msgBox">');
                
        msgBox.append(msg);
        msgBox.css('display', 'inline-block');
 
        msgLine.append(msgBox);
        $('#chatView').append(msgLine);
 
        chatView.scrollTop = chatView.scrollHeight;
    });
</script>

</body>

</html>