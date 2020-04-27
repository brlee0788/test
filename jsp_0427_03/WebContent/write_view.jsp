<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>cj cookit 마크업</title>
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style_input.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700&display=swap" rel="stylesheet">    
  </head>
<body>
<section>
        <div class="container">
          <h1>공지사항 등록</h1>
          
            <form name="wrtie.do" action="notice_list.html" method="get">
            
             <div class="input_set">
                <div class="input_1">
                  <label class="input_label">문의내용</label>
                  <div class="just_cont">
                    <textarea id="txt_wr" name="txt_cont" cols="127" rows="10" maxlength="1000" placeholder="문의 내용을 입력해주세요"></textarea>
                    <div class="txt_wr_cnt">
                      <span>0</span>
                      <span>/1000자</span>
                    </div>
                    <div class="noti_box">
                      <ul>
                        <li>고객님의 개인정보(이름,핸드폰 번호, 계좌번호 등) 입력 시 관리자에 의해 임의 삭제될 수 있습니다.</li>
                        <li>개인정보 및 환불계좌번호 변경 등 개인정보 관련 문의는 행복고객센터로 연락 부탁 드립니다.</li>
                      </ul>
                    </div>
                  </div>  
                </div>
                
                <div class="input_1">
                  <label class="input_label">첨부파일</label>
                  <div class="just_cont">
                    <div class="file_frame">
                      <span class="temp"></span>
                      <input type="file" name="attch_file" id="attch_file">
                    </div>
                    <ul class="file_noti">
                      <li>최대 5장 등록 (PNG, JPEG, JPG, GIF 포맷)</li>
                    </ul>
                    <span class="temp2">
                      <span><strong>0</strong></span>/30MB
                    </span>
                  </div>
                </div>
                
                <div class="input_1">
                
                  <label class="input_label">답변알림</label>
                  
                  <div class="just_cont">
                  <!-- 이메일 선택 부분 -->
                    <div id="email_checkbox">
                      <input type="checkbox" name="emailcheck" value="email" id="emailcheck">
                      <div class="checkbox_ico"></div>
                      <div class="checkbox_cont">
                        <label for="emailcheck">E-mail 수신</label>

                        <input type="text" name="email1" class="txt" id="email1">
                        <span>@</span>
                        <input type="text" name="email2" class="txt" id="email2">
                        <select id="email_select">
                          <option value="0">직접입력</option>
                          <option value="naver">naver.com</option>
                          <option value="hanmail">hanmail.net</option>
                          <option value="nate">nate.com</option>
                          <option value="gmail">gmail.com</option>
                        </select>   
                        <span id="select_arr1"></span>
                     </div>
                   </div>

                  <!-- sms 선택 부분 -->
                    <div id="sms_checkbox">
                      <input type="checkbox" name="smscheck" value="sms" id="smscheck">
                      <div class="checkbox_ico"></div>
                      <div class="checkbox_cont">
                        
                        <ul>
                          <li>
                            <label for="smscheck">SMS</label>
                          </li>
                          <li>
                            <select id="phone_select">
                              <option value="010">010</option>
                              <option value="011">011</option>
                              <option value="016">016</option>
                              <option value="017">017</option>
                              <option value="018">018</option>
                              <option value="019">019</option>
                            </select>
                            <span id="select_arr2"></span>
                          </li>
                          <li>
                            <input type="text" name="email1" class="txt" id="email1">
                          </li>
                          <li>
                            <input type="text" name="email2" class="txt" id="email2">                        
                          </li>
                        </ul>  
                          
                     </div>
                   </div>

                   <div class="noti_box">
                      <ul>
                        <li>알림수신을 위한 일회성 변경으로 회원 기본정보가 변경되지 않습니다.</li>
                      </ul>
                    </div>
                                       
                 </div>
               </div>
              
            </div>

              <div class="bttn_set">
                <button onclick="location.href='notice_list.html'">취소</button>
                <button type="submit">확인</button>
              </div>
              
            </form>
        </div>
      </section>

</body>
</html>