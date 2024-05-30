package beans;

public class Student {
	private String name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}//name
	
	
	private int age;
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}//age


	private String address;

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}//address
	
	public String toString() {
		return name +", "+age +","+address;
	}//toString
}//class
