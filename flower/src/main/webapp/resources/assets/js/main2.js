$(function(){
   
    const field = document.querySelector('.keyword');
	const fieldRect = field.getBoundingClientRect();  
	
    // 랜덤 위치에 태그
    
    function createDiv(count) {
    
  const xMin = 0
  const yMin = 0
  const xMax = fieldRect.width;
  const yMax = fieldRect.height-30;
  const xs = []
  const content = ['#짝사랑' , '#강인함과 끈기', '#하늘이 내린 인연', '#당신의 마음은 아름답습니다', '#변심', '#추억', '#소녀의 꿈' ,' #애교쟁이' , '#헛수고', '#다시 찾은 행복']
  const product_id = [1, 2, 3, 4, 5, 11, 7, 8, 9, 10]
  for (let i = 0; i < count; i++) {
    const newDiv = document.createElement('a');
    newDiv.id = `${i}`
    
    const x = randomNumber(xMin, xMax);
    const y = randomNumber(yMin, yMax);
    
    newDiv.setAttribute("href" , `/flower/product/product-content?product_id=${product_id[i]}`)
    newDiv.style.position = 'absolute';
    newDiv.style.left = `${x}px`;
    newDiv.style.top = `${y}px`;
    newDiv.style.width = 'auto'; 
    newDiv.style.height = '30px';
    newDiv.innerText = content[i]
    newDiv.style.fontSize = '20px';
    newDiv.style.whiteSpace = "nowrap";
    
    field.appendChild(newDiv);
    
    var bottomm = newDiv.getBoundingClientRect().bottom
    
    if(xs.length >= 1){
    if((xs.some(comparewidth) && xs.some(compareheight)) || (xs.some(compareheight) && xs.some(insideAndoutside)) || (newDiv.getBoundingClientRect().left + newDiv.offsetWidth > fieldRect.left + fieldRect.width)){
	field.removeChild(newDiv);
	i--
	}else {
	
		xs.push(newDiv)
		}
	}else {
		xs.push(newDiv)
	}
	
	
	function compareheight(element,index, array) {
	return ((element.getBoundingClientRect().top <= newDiv.getBoundingClientRect().top && element.getBoundingClientRect().bottom >= newDiv.getBoundingClientRect().top) || (element.getBoundingClientRect().top <= newDiv.getBoundingClientRect().bottom && element.getBoundingClientRect().bottom >= newDiv.getBoundingClientRect().bottom))
	}
	
	function comparewidth(element){
		return ((element.getBoundingClientRect().left < newDiv.getBoundingClientRect().left && element.getBoundingClientRect().left + element.offsetWidth > newDiv.getBoundingClientRect().left) || (element.getBoundingClientRect().left < newDiv.getBoundingClientRect().left + newDiv.offsetWidth && element.getBoundingClientRect().left + element.offsetWidth > newDiv.getBoundingClientRect().left + newDiv.offsetWidth))
	}
	
	function insideAndoutside(element){
		return ((element.getBoundingClientRect().left < newDiv.getBoundingClientRect().left && newDiv.getBoundingClientRect().left + newDiv.offsetWidth < element.getBoundingClientRect().left + element.offsetWidth) || (element.getBoundingClientRect().left > newDiv.getBoundingClientRect().left && newDiv.getBoundingClientRect().left + newDiv.offsetWidth > element.getBoundingClientRect().left + element.offsetWidth))
	}
	
    
  		}
	}


function randomNumber(min, max) {
  return Math.random() * (max - min) + min;
}

createDiv(10);

})