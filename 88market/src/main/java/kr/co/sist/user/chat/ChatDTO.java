// ChatMessage.java
package kr.co.sist.user.chat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ChatDTO {
    private String sender;
    private String content;
    private String roomId;
}

