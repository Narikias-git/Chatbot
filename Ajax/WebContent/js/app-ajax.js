//$(document).ready(function() {
//        $('#userName').blur(function(event) {
//                var name = $('#userName').val();
//                $.get('GetUserServlet', {
//                        userName : name
//                }, function(responseText) {
//                        $('#ajaxGetUserServletResponse').text(responseText);
//                });
//        });
//});
//
var starttime=new Date(Date.now());
console.log("starttime"+starttime);
function time_ago(time) {
console.log("inside time+Age"+time);
  switch (typeof time) {
    case 'number':
    	console.log("number");
      break;
    case 'string':
    	console.log("string");
      time = +starttime;
      break;
    case 'object':
    	console.log("pbj");
      if (time.constructor === Date) time = time.getTime();
      break;
    default:
    	console.log("def");
      time = +starttime;
  }
  var time_formats = [
    [60, 'seconds', 1], // 60
    [120, '1 minute ago', '1 minute from now'], // 60*2
    [3600, 'minutes', 60], // 60*60, 60
    [7200, '1 hour ago', '1 hour from now'], // 60*60*2
    [86400, 'hours', 3600], // 60*60*24, 60*60
    [172800, 'Yesterday', 'Tomorrow'], // 60*60*24*2
    [604800, 'days', 86400], // 60*60*24*7, 60*60*24
    [1209600, 'Last week', 'Next week'], // 60*60*24*7*4*2
    [2419200, 'weeks', 604800], // 60*60*24*7*4, 60*60*24*7
    [4838400, 'Last month', 'Next month'], // 60*60*24*7*4*2
    [29030400, 'months', 2419200], // 60*60*24*7*4*12, 60*60*24*7*4
    [58060800, 'Last year', 'Next year'], // 60*60*24*7*4*12*2
    [2903040000, 'years', 29030400], // 60*60*24*7*4*12*100, 60*60*24*7*4*12
    [5806080000, 'Last century', 'Next century'], // 60*60*24*7*4*12*100*2
    [58060800000, 'centuries', 2903040000] // 60*60*24*7*4*12*100*20, 60*60*24*7*4*12*100
  ];
  var seconds = (+starttime - time) / 1000,
    token = 'ago',
    list_choice = 1;

  if (seconds == 0) {
    return 'Just now'
  }
  if (seconds < 0) {
    seconds = Math.abs(seconds);
    token = 'from now';
    list_choice = 2;
  }
  var i = 0,
    format;
  while (format = time_formats[i++])
    if (seconds < format[0]) {
      if (typeof format[2] == 'string')
        return format[list_choice];
      else
        return Math.floor(seconds / format[2]) + ' ' + format[1] + ' ' + token;
    }
  console.log("-when clicked-"+time);
  return time;

}

var aDay = 24 * 60 * 60 * 1000;
/*console.log(time_ago(new Date(Date.now() - aDay/60)));
console.log("-starst-"+time_ago(new Date(Date.now())));*/
console.log("-mytime-"+time_ago(new Date(Date.now())));
console.log(time_ago(new Date(Date.now() - aDay/60)));
function scrollfin(){
	console.log("sfin");
	var container = $('#ich')[0];
	var containerHeight = container.clientHeight;
	var contentHeight = container.scrollHeight;

	container.scrollTop = contentHeight - containerHeight;
}

$(document).ready(function() {
//	time_ago();
//	$("time.timeago").timeago();

	$('#btn-chat').click(function() {

		
//		console.log(time_ago(new Date(Date.now())));
		$('#wind').append("<li class=\"list-unstyled left clearfix\"> <div class=\" chat-body clearfix\"> <div class=\"header\"> <strong class=\"pull-right primary-font\">You </strong>  </div><BR> <p class=\"pull-right\">"+$('#btn-input').val()+"  </p> </div> </li>");
		scrollfin();
		//alert("HIsa");
		$.ajax({
			url : 'GetUserServlet',
			data : {
				userName : $('#btn-input').val()
			},
			success : function(responseText) {
				$('#btn-input').val('');
				$('#btn-input').attr("placeholder","Type your message here..." );
			
				$('#wind').append("<li class=\"list-unstyled\"> <div class=\"chat-body clearfix\"> <div class=\"header\"> <strong class=\" primary-font\">Support Agent </strong> <br> </div> <p>"+responseText+" </p> </div> </li>");
				
				
				$('#ajaxGetUserServletResponse').text(responseText);
				scrollfin();
				
			}
		});
	});
});