package com.jv391.models;

import java.util.Date;

public class Beer {
	public static Beer[] beers = {
		new Beer("Amber", 1, new Date(), "Coors"),
		new Beer("Dark Brown", 3, new Date(), "Guinness"),
		new Beer("Red", 5, new Date(), "Leinekugel"),
		new Beer("Brown", 7, new Date(), "Bully Porter"),
		new Beer("Brown", 9, new Date(), "80 Acre Hoppy Wheat"),
		new Beer("Dark Brown", 8, new Date(), "Bob's '47 Oktoberfest"),
		new Beer("Light Brown", 8, new Date(), "Boss Tom's Golden Bock"),
		new Beer("Chocolate", 8, new Date(), "Chocolate Ale")
	};
	private String color;
	private int rating;
	private Date date;
	private String name;
	private static int count;
	
	public static int getCount() {
		return count;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public static void setCount(int count) {
		Beer.count = count;
	}
	public Beer(String color, int rating, Date date, String name) {
		super();
		this.color = color;
		this.rating = rating;
		this.date = date;
		this.name = name;
	}
	public Beer() {
		this("Beer Color", 5, new Date(), "Beer Name");
	}
	@Override
	public String toString() {
		return "Beer [color=" + color + ", rating=" + rating + ", date=" + date
				+ "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((color == null) ? 0 : color.hashCode());
		result = prime * result + ((date == null) ? 0 : date.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + rating;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Beer other = (Beer) obj;
		if (color == null) {
			if (other.color != null)
				return false;
		} else if (!color.equals(other.color))
			return false;
		if (date == null) {
			if (other.date != null)
				return false;
		} else if (!date.equals(other.date))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (rating != other.rating)
			return false;
		return true;
	}
}
