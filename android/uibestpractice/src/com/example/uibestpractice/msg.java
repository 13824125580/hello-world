package com.example.uibestpractice;

public class msg {
	
	public static final int TYPE_RECEIVED = 0;
	public static final int TYPE_SENT = 1;
	private String content;
	
	private int type;
	
	public msg(String content, int type){
		this.content = content;
		this.type = type;
	}
	
	public String getcontent(){
		return content;
	}
	
	public int gettype(){
		return type;
	}
}
