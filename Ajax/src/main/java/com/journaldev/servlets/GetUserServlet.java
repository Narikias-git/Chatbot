package main.java.com.journaldev.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.watson.developer_cloud.conversation.v1.ConversationService;
import com.ibm.watson.developer_cloud.conversation.v1.model.MessageRequest;
import com.ibm.watson.developer_cloud.conversation.v1.model.MessageResponse;

@WebServlet("/GetUserServlet")
public class GetUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static  Map context =null;
	public void init(){
		System.out.println("dddddd");
		 context = new HashMap();
		 System.out.println("---?"+context.toString());
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String userName = request.getParameter("userName").trim();
		if(userName == null || "".equals(userName)){
			userName = "Guest";
		}
		MessageResponse mresponse = null;
		
		mresponse = conversationAPI(userName,context); 
		System.out.println("Watson Response:"+ mresponse.getText().get(0));
		context = mresponse.getContext();
		System.out.println("———–	");
		
		String greetings = "Hello " + mresponse.getText().get(0);
		System.out.println("GRE"+greetings);
		response.setContentType("text/plain");
		response.getWriter().write(greetings);
	}
	
	public static MessageResponse conversationAPI(String input,Map context){
		ConversationService service = new ConversationService("2017-06-24");
		service.setUsernameAndPassword("758d1b4e-55b2-4966-a3ce-32230b10e0af", "VGf7b0ZSuESs");
		MessageRequest newMessage = new MessageRequest.Builder()
		.inputText(input).context(context).build();
//		String workspaceId = "78760dce-114c-4e1e-9367-5b9e13ef01b3";
		String workspaceId = "3fda803a-2e1a-471b-a48c-83bc11af6b18";
		MessageResponse response = service.message(workspaceId, newMessage).execute();
		return response;
		} 

}
