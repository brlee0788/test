/**
 * 
 */

function delete_chk(){
	var check = confirm("해당 게시물을 삭제하시겠습니까?");
	if(check==true){
		location.href='b_delete.jsp?b_num='+modify.b_num.value;
	} else{
		return false;
	}
	
}