<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inwide</title>


<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/app-ajax.js" type="text/javascript"></script>
<script src="js/jquery.timeago.js" type="text/javascript"></script>
<!-- <link rel="stylesheet" href="./chat.css"> -->
  
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
  <!-- Latest compiled and minified CSS -->

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
  <link rel="stylesheet" href="./bot.css">



</head>
<body>
<div  id="firstdiv" class="container">
    <div class="row">
        <div class="col-md-5">
        
            <div id="phead" class="chatbot panel panel-primary">
                <div  class="panel-heading">
                    <span class="glyphicon glyphicon-comment"></span> Chat
                    <div class="btn-group pull-right">
                        <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="collapse" data-target="#chatwin">
                            <span class="glyphicon glyphicon-chevron-down"></span>
                        </button>
                        
                    </div>
                </div>
                <div id="chatwin" class="collapse in" >
                <div  id="ich"  style=" height:440px; overflow: auto " class="panel-body">
                    <ul id="wind" class="chat" >
                         <li class="list-unstyled  clearfix">
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <strong class="  primary-font">Support Agent</strong> 
                                </div>
                               
                                <p>
                                    Hi. It looks like a nice drive today. What would you like me to do? 
                                </p>
                            </div>
                        </li>
                       <!-- <li class="right clearfix"><span class="chat-img pull-right">
                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>13 mins ago</small>
                                    <strong class="pull-right primary-font">Bhaumik Patel</strong>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                    dolor, quis ullamcorper ligula sodales.
                                </p>
                            </div>
                        </li>
                        <li class="left clearfix"><span class="chat-img pull-left">
                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <strong class="primary-font">Jack Sparrow</strong> <small class="pull-right text-muted">
                                        <span class="glyphicon glyphicon-time"></span>14 mins ago</small>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                    dolor, quis ullamcorper ligula sodales.
                                </p>
                            </div>
                        </li>
                        <li class="right clearfix"><span class="chat-img pull-right">
                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>15 mins ago</small>
                                    <strong class="pull-right primary-font">Bhaumik Patel</strong>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                    dolor, quis ullamcorper ligula sodales.
                                </p>
                            </div>
                        </li> -->
                    </ul>
              </div>
             
                     <div class="panel-footer" style="align:bottom">
                    <div class="input-group">
                        <input id="btn-input" type="text"  autocomplete="off"  class="form-control input-sm" placeholder="Type your message here..." />
                        <span class="input-group-btn">
                            <input type="button" class="btn btn-warning btn-sm" id="btn-chat" value="Send"> Send</input>
                        </span>
                    </div>
                </div>
                 </div>
                  
            <!--     <div class="panel-footer">
                 
                    <div class="input-group">
                   
                        <input id="btn-input" type="text" autocomplete="off"  class="form-control input-sm"  placeholder="Type your message here..." >
                        <span class="input-group-btn">
                            <input type="button" class="btn btn-warning btn-sm" id="btn-chat" value="Send"> Send</input>
	
                    </div>
                    
                </div> -->
            </div>
        </div>
    </div>
</div>
	
</body>
</html>