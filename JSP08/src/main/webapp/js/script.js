console.log("동작확인!");


window.onload=function(){
	let select = document.getElementsByTagName("select");
	for(let i = 0 ; i<select.length;i++){
		select[i].addEventListener("change",function(){
			console.log("첫번째"+select[0].value);
			console.log("두번째"+select[1].value);
			
		});
	}
}
//실행순서 :
//스크립트가 head부분에 있어서 스크립트를 가장 마지막에 해줘야함
//window : 브라우저의 동작을 관할하는 객체
//window.onload 여기 들어간 함수는 화면을 다 그린뒤 실행