package com.mycompany.webapp.dto;

public class Product {
	private String id;
	private String name;
	private String brand;
	private String color;
	private String size;
	private String price;
	private String imgSrc;
	public Product() {};
	public Product(String id, String name, String brand, String color, String size, String price, String imgSrc) {
		super();
		this.id = id;
		this.name = name;
		this.brand = brand;
		this.color = color;
		this.size = size;
		this.price = price;
		this.imgSrc = imgSrc;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImgSrc() {
		return imgSrc;
	}
	public void setImgSrc(String imgSrc) {
		this.imgSrc = imgSrc;
	}
	
	
}
