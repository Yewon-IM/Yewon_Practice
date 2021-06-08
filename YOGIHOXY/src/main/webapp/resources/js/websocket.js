$(document).ready(function() {
    	// Socket 열기
		myWebSocket.openSocket();

    	// Send 버튼 Click Event
		$("#sendBtn").click(function() {
			sendMessage();
	        $('#message').val('');
	        
        });
    	
    	// 메시지 입력시
        $("#message").keydown(function(key) {
	        if (key.keyCode == 13) {// 엔터
	            sendMessage();
	            $('#message').val('');
	        }
        });
 	});	
	
    var wsUri = "ws://localhost:8888/hoxy/socket1";
	var webSocket;
	var myWebSocket = {
		openSocket : function() {
	        webSocket = new WebSocket(wsUri);
	        webSocket.onopen = function(evt) {
	        	// Socket Open
    			writeToScreen("WebSocket Connection opened!");
	        };
	        webSocket.onmessage = function(evt) {
	        	// 서버로 부터 메시지 수신
		    	myWebSocket.handleMessage(evt.data);
		    	Notify();
	        };

	        webSocket.onerror = function(evt) {
	        	// Socket Error 발생
	        	myWebSocket.onError(evt)
	        };
	        
	        webSocket.onclose = function(event) {
	        	// Socket 닫힘
	        	writeToScreen("Server Connection closed");
		   };        
		},
		doSend : function(message) {
			// 서버로 메시지 전송
			webSocket.send(message);
		},
		handleMessage : function (data) {
			// 메시지 처리
			if(data != null){
				$("#serverMessage").val(data);
				writeToScreen(data);
			}
		}
	}		
	
    function writeToScreen(message) {
		// 서버로 부터 수신된 메시지를 출력한다.
        var pre =document.createElement("p");
        pre.style.wordWrap = "break-word";
        pre.innerHTML = message;
        output.appendChild(pre);
        output.prepend(pre);
    }

	function sendMessage(){
		Notify();
		myWebSocket.doSend($("#message").val());
	}