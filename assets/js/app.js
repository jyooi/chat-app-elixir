// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import "../css/app.css"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import deps with the dep name or local files with a relative path, for example:
//
//     import {Socket} from "phoenix"
//     import socket from "./socket"
//
////import "phoenix_html"


/////let socket = new Phoenix.Socket("/socket", {})
////socket.connect()

////let channel = socket.channel("hangout:lobby", {})
////channel.join()
////  .receive("ok", resp => { console.log("Joined successfully", resp) })
////  .receive("error", resp => { console.log("Unable to join", resp) })


  import socket from "./socket"
  import "phoenix_html"
  
  let channel = socket.channel('hangout:lobby', {});
  channel.join();
  let chat = document.getElementById('chat');
  let username = document.getElementById('username');
  let msg = document.getElementById('msg');
  var count = 0;
  msg.addEventListener('keypress', function (event) {
    if (msg.value.length > 0 && event.keyCode == 13) {
        count++;
        channel.push('shout', { name: username.value, message: msg.value })
        msg.value = '';
        if(count==1){
          username.readOnly = true;
        }
    }
  });
  channel.on('shout', function (payload) {
      let para = document.createElement("p"); 
      let name = payload.name;              
      para.innerHTML = '<b>' + name + '</b> <span style="color:black;">' + payload.message + '</span>';
      chat.appendChild(para);    
  });
  