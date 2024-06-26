<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<title>데이터 전송</title>
		
		<style>
			tr, th, td{
				border : 1px solid black;
				
				
			}
			table{
				border-collapse : collapse;
				text-align : center;
				margin: 0 auto;
				width: 300px;
				
			}
			
			
			
		</style>
	</head>
	<body>
		<div id="wrap">
			<table>
				<thead>
				<tr>
					<th>상품명</th>
					<th>가격</th>
					<th>수량</th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td>컴퓨터</td>
					<td><span class="qq">1000000</span></td>
					<td>
						<input type="number" name="comNum" min="0" max="5" value="0">
					</td>
				
				</tr>
				<tr>
					<td>스마트폰</td>
					<td><span class="qq">1500000</span></td>
					<td>
						<input type="number" name="phoneNum" min="0" max="5" value="0">
					</td>
				
				
				</tr>
				</tbody>
				<tfoot>
					<tr rowspan="4">
						<td colspan="3">
							<h2>결제총액</h2>
							<h2>
								<span id="sum">0</span>원
							</h2>
							<input type="submit" value="결제하기">
							
						
						
						</td>
						
					</tr>
				</tfoot>	
			</table>
		</div>
		
		<script>
			let sums = document.getElementById("sum");
			let qq = document.getElementsByClassName("qq");
			let inputs = document.getElementsByTagName("input");
			
			inputs[2].addEventListener("click",function(){
				sums.innerHTML = Number(qq[0].innerHTML)*Number(inputs[0].value)
								+Number(qq[1].innerHTML)*Number(inputs[1].value);
				
				
			});
			
			
		</script>
	</body>
</html>