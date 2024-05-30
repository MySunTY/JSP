package test;

public class Sample {
	public String name="홍길동";
	public int age=19;
	public String address= "서울시 강동구";
	public String make="";
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public String makeTable(int a, int b) {
		//a  : tr  b: td
		//메서드 스트링으로 해야함 , 화면에 그려야하기 때문에
		String table = "<table>";
		for(int i = 1 ; i<=a; i++) {
			table += "<tr>";
			for(int j =1 ; j<=b ; j++) {
				table += "<td style='border:1px solid black'>";
				table += i+", "+j;
				table += "</td>";
			}
			table += "</tr>";
		}
		
		
		
		
		table += "</table>";
		return table;
	}//makeTable
	public Sample(int a , int b) { //생성자도 사용가능
		make = makeTable(a,b);
	}
}//sample class
