package com.mkyong.web.pojo;

public class Item {
	
	private String title;

	
	public Item() {
	}

	public Item(String title) {
		super();
		this.title = title;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	
	

}
