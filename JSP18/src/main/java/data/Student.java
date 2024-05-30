package data;

public class Student {
	private String name;
	
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	
	
	private int kor;
	
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}


	private int eng;
	
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getEng() {
		return eng;
	}
	
	private int math;
	public void setMath(int math) {
		this.math = math;
	}
	public int getMath() {
		return math;
	}
	
	
	public int sum() {
		return kor + eng + math;
	}//sum
	public float avr() {
		float sum = sum();
		return sum/3;
	}
	public String toString() {
		return name+"," +kor+","+eng+","+math;
		
	}
}
