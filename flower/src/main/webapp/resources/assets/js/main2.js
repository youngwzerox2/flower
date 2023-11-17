$(function(){
  
	// 꽃말의 정보를 담을 배열
	const flowerkeyword = []
	const product_id = []
	
	// db에 있는 아이디와 꽃말 가져오기    
    $.ajax({
    	type : 'post',
    	url : '/flower/Main/flowerkeyword',
    	dataType : 'json',
    	success : function(result){
    		
    		for(var i in result){
    			flowerkeyword.push(result[i].product_keyword)
    			product_id.push(result[i].product_id)
    		}
    		// 아작스 성공후 createDiv함수 실행
    		createDiv(10);
    	}
    	
    })
    
    // for문 안에서 생성할 a태그 변수 선언
	var newDiv = ''
	
	// Div를 담을 배열
	const xs = []
	
	//꽃말을 띄우고자 하는 공간
    const field = document.querySelector('.keyword');
    
    // 꽃말을 띄우고자 하는 공간의 정보
	const fieldRect = field.getBoundingClientRect();  
	
    // Div 동적생성
    function createDiv(count) {
    
   		// 꽃말을 띄우고자 하는 범위 지정
  		const xMin = 0
  		const yMin = 0
  		const xMax = fieldRect.width;
  		const yMax = fieldRect.height-30;
  
  		//count만큼 Div생성
 		for (let i = 0; i < count; i++) {
   			newDiv = document.createElement('a');
    		
    		// randomNumber함수 호출
   			const x = randomNumber(xMin, xMax);
   			const y = randomNumber(yMin, yMax);
    		
    		// Div의 속성 지정
    		newDiv.setAttribute("href" , `/flower/product/product-content?product_id=${product_id[i]}`)
    		newDiv.style.position = 'absolute';
    		newDiv.style.left = `${x}px`;
    		newDiv.style.top = `${y}px`;
    		newDiv.style.width = 'auto'; 
    		newDiv.style.height = '30px';
    		newDiv.innerText = flowerkeyword[i]
    		newDiv.style.fontSize = '20px';
    		newDiv.style.whiteSpace = "nowrap";
    
    		// Div생성 후 공간에 부착
    		// 부착해야 공간과 공간이 서로 겹치는지 확인이 가능
   			field.appendChild(newDiv);
    
    		// Div 배열에 만들어놨던 Div가 한개 이상일때부터 새로만든 Div와 비교
   			 if(xs.length >= 1){
   			 		//	배열에 있는 Div에 새로만든 Div의 영역이 하나라도 포함이 된다면
   			 		//	newDiv를 자식에서 제거하고 for문의 횟수를 하나 되돌린다
   				 if((xs.some(comparewidth) && xs.some(compareheight)) ||
   				 	(xs.some(compareheight) && xs.some(insideAndoutside))||
   				 	
   				 	// 새로만든 Div의 가로영역의 끝점이 내가 정한 범위를 벗어나도 동일하게 작동
   				 	(newDiv.getBoundingClientRect().left + newDiv.offsetWidth > fieldRect.left + fieldRect.width)){
					field.removeChild(newDiv);
					i--
				 }else {
					xs.push(newDiv)
				 }
			//Div 배열에 Div가 하나도 없으면 바로 추가	 
			 }else {
				xs.push(newDiv)
			 }
  		}
	}
	

	//랜덤함수로 랜덤위치 생성
	function randomNumber(min, max) {
 		return Math.random() * (max - min) + min;
	}
	
	// 새로 만든 Div와 배열에 속해있는 Div의 가로영역이 서로 겹치는지 확인하는 함수
	function compareheight(element) {
		return ((element.getBoundingClientRect().top <= newDiv.getBoundingClientRect().top &&
				element.getBoundingClientRect().bottom >= newDiv.getBoundingClientRect().top)||
				(element.getBoundingClientRect().top <= newDiv.getBoundingClientRect().bottom &&
				element.getBoundingClientRect().bottom >= newDiv.getBoundingClientRect().bottom))
	}
	
	// 새로 만든 Div와 배열에 속해있는 Div의 세로영역이 서로 겹치는지 확인하는 함수
	function comparewidth(element){
		return ((element.getBoundingClientRect().left < newDiv.getBoundingClientRect().left &&
				element.getBoundingClientRect().right > newDiv.getBoundingClientRect().left) ||
				(element.getBoundingClientRect().left < newDiv.getBoundingClientRect().right &&
				element.getBoundingClientRect().right > newDiv.getBoundingClientRect().right))
	}
	
	// 새로 만든 Div와 배열에 속해있는 Div의 영역들이 서로 완전히 포함하는지 확인하는 함수
	function insideAndoutside(element){
		return ((element.getBoundingClientRect().left < newDiv.getBoundingClientRect().left &&
				newDiv.getBoundingClientRect().right < element.getBoundingClientRect().right) ||
				(element.getBoundingClientRect().left > newDiv.getBoundingClientRect().left &&
				 newDiv.getBoundingClientRect().right > element.getBoundingClientRect().right))
	}

})