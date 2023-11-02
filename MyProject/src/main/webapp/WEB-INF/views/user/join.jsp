<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#contents {
    width: 900px;
    height: auto;
    margin: auto;
}
.guide_txt{
    position: relative;
    font-size: 12px;
    color: #666;
}
.txt_r{
    font-size: 12px;
    color: #777;
    display: inline-block;
    position: absolute;
    right: 0;
}
.req{
    display: inline-block;
    width: 0px;
    height: 8px;
    text-indent: -9999px;
    background-position: 0 2px;
}

/************* 테이블 작업 ************/
table.table_type{
    width: 900px;
    border-collapse: collapse;
    /* border: 1px solid #ddd;
    border-left: none;
    border-right: none; */
    border: none;
}

table.table_type th{
    border: 1px solid #ddd;
    font-weight: bold;
    padding: 10px 0 10px 10px;
    background-color: #efefef;
    text-align: left;
    border-left: none;
}
table.table_type td{
    border: 1px solid #ddd;
    padding: 10px;
    border-right: none;
}
.join{
    padding: 3px 6px;
    border: 1px solid #ddd;
    border-radius: 5px;
}

.b_bdcheck{
    width: 58px;
    height: 25px;
    background-position: 0 -150px;
    /* border: 1px solid black; */
    position: absolute;
    margin: 0 10px;
}
dt{
    display: inline-block;
    width: 90px;
    height: 30px;
    line-height: 30px;
    /* border: 1px solid red; */
}
dd{
    display: inline-block;
    width: 190px;
}
.post_num{
    width: 80px;
    height: 25px;
    background-position: -58px -150px;
    margin: 2px 10px;
    vertical-align: top; /* 수직정렬 */
}

div.btn_area{
    text-align: center;
    margin: 20px;
}
div.btn_area span{
    margin-top: 30px;
    padding: 3px 0;
}
.b_ok{
    width: 70px;
    height: 40px;
    background-position: 0 -100px;
}
.b_cancel{
    width: 70px;
    height: 40px;
    background-position: -100px -100px;
}
.pn{
    /* display: inline-block; */
    width: 300px;
    border: 1px solid red;
}

.title01{
    display: inline-block;
    text-indent: -9999px;
}

.mainLogo{
    display: inline-block;
    width: 230px;
    height: 65px;
    text-indent: -9999px;
    margin-left: 40%;
    margin-top: 20px;
}



</style>
</head>
<body>
    <div id="wrap">
        <!--  상단영역  -->
        
            
        </header>
        <!-- 상단영역 끝 -->
        
        <!--  콘텐츠영역  -->
        <div id="contents">
            <img src="../img/mainLogo.png" class="mainLogo">
            <span class="sub_title title01">
                회원가입
            </span>
            <p class="title_src">
                
            </p>
            <p class="guide_txt">
                회원 가입을 위해 아래 정보를 입력해주세요
            </p>
            <br>
            <form action="${pageContext.request.contextPath}/user/join" name="join" method="post">
                <table class="table_type">
                    <colgroup>
                        <col width="130px"/>
                        <col width="*">
                    </colgroup>
                    <tbody>                        
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_id">아이디</label>
                                
                            </th>
                            <td>
                                <p class="guide_txt">
                                    <input type="text" id="userId" name="userId" class="join">
                                <span class="btn b_bdcheck">
                                    <!-- <img src="../img/id_check.png" class="id_check"> -->
                                    <input name="idCheck" type="button" value="중복확인">
                                </span><br/>
                                    6~12자리의 영문, 숫자를 입력해 주세요.                                    
                                </p>
                                
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_pw">비밀번호</label>
                            </th>
                            <td>
                                <p class="guide_txt">
                                    <input type="password" id="s_pw" name="u_pw" class="join">&nbsp;&nbsp;&nbsp;&nbsp;<br/>
                                    10개 이상의 문자조합(영문 대소문자 + 숫자 또는 기호(!~#@))을 입력해 주세요.
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_pw2">비밀번호 확인</label>
                            </th>
                            <td>
                                <p class="guide_txt">
                                    <input type="password" id="s_pw2" name="u_pw2" class="join"><br/>
                                    입력하신 비밀번호 확인을 위해 다시 한번 입력해 주세요
                                </p>
                            </td>
                        </tr>

                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_name">이름</label>
                            </th>
                            <td>
                                <input type="text" id="s_name" name="u_name" class="join">
                            </td>
                        </tr>
                        
                        <tr>
                            <th>
                                <span class="req" join></span>
                                <label>이메일</label>

                            </th>
                            <td class="pn_td">
                                <p class="pn_txt">
                                    <input type="text" class="join" id="email1" name="email1">
                                    @
                                    <input type="text" class="join" id="email2" name="email2">&nbsp;
                                    <select type="select"  id="email" name="email">
                                        <option value="">직접입력</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="gmail.com">gmail.com</option>
                                        <option value="daum.net">daum.net</option>

                                    </select>&nbsp;&nbsp;
                                    <span class="btn b_bdcheck">
                                        <input type="button" value="이메일 인증">
                                    </span>
                                    
                                </p>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="btn_area">
                    <span class="btn b_ok">
                        <input type="button" value="확인">
                    </span>
                    <span class="btn b_cancel">
                        <input type="button" value="취소">
                    </span>
                </div>
        </form>
        </div>
        <!-- 콘텐츠영역 끝 -->

        <!--  하단영역  -->
        <%@ include file="../include/footer.jsp"  %>
        <!-- 하단영역 끝 -->
    </div>

    <script>
        //회원가입 요청

        const userId = document.join.userId.value;
        const $idCheck = document.join.idCheck;
        $idCheck.onclick = e => {
            
            fetch('${pageContext.request.contextPath}/user/id/' + userId)
        }
    </script>
</body>
</html>