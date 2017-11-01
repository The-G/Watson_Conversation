package net.n1books.chat.dev;

import java.util.Scanner;

import org.junit.Test;

import com.ibm.watson.developer_cloud.conversation.v1.Conversation;
import com.ibm.watson.developer_cloud.conversation.v1.model.Context;
import com.ibm.watson.developer_cloud.conversation.v1.model.InputData;
import com.ibm.watson.developer_cloud.conversation.v1.model.MessageOptions;
import com.ibm.watson.developer_cloud.conversation.v1.model.MessageResponse;

public class ConversationTest {

	@Test
	public void testConversation() {
		Scanner sc = new Scanner(System.in);
		Conversation service = new Conversation(Conversation.VERSION_DATE_2017_05_26);
		service.setUsernameAndPassword("2a23e7d4-1a54-4f31-8f40-f3c058fa42eb", "wnLHiswqmH3p");

		MessageResponse response = null;
		Context context = null;
		MessageOptions options = null;
		String msg = "";
		StringBuffer watsonSay = null;
		
		while(true) {
			options = new MessageOptions.Builder()
				    .workspaceId("0c3592b8-463d-46fb-8e58-6a50b5639bec")
				    .input(new InputData.Builder(msg).build())
				    .context(context)
				    .build();
			response = service.message(options).execute();
			System.out.print("Watson : ");
			
			watsonSay = new StringBuffer();
			for(String text : response.getOutput().getText()) {
				watsonSay.append(text);
				watsonSay.append(" ");
			}
			
			System.out.println(watsonSay);
			System.out.print("I : ");
			msg = sc.nextLine();
			context = response.getContext();
		}
	}
}
