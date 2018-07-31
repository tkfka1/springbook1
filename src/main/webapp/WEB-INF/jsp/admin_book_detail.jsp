<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>《 ${detail.name}》</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <style>
        body{
            background-color: rgb(240,242,245);
        }


    body,p,h1,h2,h3,h4,h5,h6,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,input,textarea,button,select{margin:0;padding:0}
    body,input,textarea,select,button,table{font-family:'돋움',Dotum,AppleGothic,sans-serif;font-size:12px}
    img,fieldset{border:0}
    ul,ol{list-style:none}
    em,address{font-style:normal}
    a{text-decoration:none}
    a:hover,a:active,a:focus{text-decoration:underline}
    .search_book {margin: 10px;}
    .result{ margin: 20px;}
    .srch{width:100%;padding:5px 0; margin: 0px 10px;}
    .srch legend{overflow:hidden;visibility:hidden;position:absolute;top:0;left:0;width:1px;height:1px;font-size:0;line-height:0}
    .srch{color:#c4c4c4;text-align:left}
    .srch select,.srch input{margin:-1px 0 1px;font-size:12px;color:#373737;vertical-align:middle}
    .srch .keyword{margin-left:1px;padding:2px 3px 5px;border:1px solid #b5b5b5;font-size:12px;line-height:15px}
    .tbl_type,.tbl_type th,.tbl_type td{border:0}
    .tbl_type{width:100%;border-bottom:2px solid #dcdcdc;font-family:Tahoma;font-size:11px;text-align:center}
    .tbl_type caption{display:none}
    .tbl_type th{padding:7px 0 4px;border-top:2px solid #dcdcdc;background-color:#f5f7f9;color:#666;font-family:'돋움',dotum;font-size:12px;font-weight:bold}
    .tbl_type td{padding:6px 0 4px;border-top:1px solid #e5e5e5;color:#4c4c4c}


    </style>

</head>
<body>
<nav  style="position:fixed;z-index: 999;width: 100%;background-color: #fff" class="navbar navbar-default" role="navigation" >
    <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
            <a class="navbar-brand" href="admin_main.html">도서 관리 시스템</a>
        </div>
        <div class="collapse navbar-collapse" >
            <ul class="nav navbar-nav navbar-left">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        도서 관리
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="allbooks.html">모든 도서</a></li>
                        <li class="divider"></li>
                        <li><a href="book_add.html">도서 추가</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        독자 관리
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="allreaders.html">모든 회원</a></li>
                        <li class="divider"></li>
                        <li><a href="reader_add.html">회원 추가</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        대여 관리
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="lendlist.html">대여 리스트</a></li>
                    </ul>
                </li>
                <li >
                    <a href="admin_repasswd.html" >
                        비밀번호 수정
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.html"><span class="glyphicon glyphicon-user"></span>&nbsp;${admin.adminId}，로그인 됨</a></li>
                <li><a href="logout.html"><span class="glyphicon glyphicon-log-in"></span>&nbsp;로그아웃</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="col-xs-6 col-md-offset-3" style="position: relative;top: 10%">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">《 ${detail.name}》</h3>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <tr>
                    <th width="15%">제목</th>
                    <td>${detail.name}</td>
                </tr>
                <tr>
                    <th>저자</th>
                    <td>${detail.author}</td>
                </tr>
                <tr>
                    <th>출판사</th>
                    <td>${detail.publish}</td>
                </tr>
                <tr>
                    <th>ISBN</th>
                    <td>${detail.isbn}</td>
                </tr>
                <tr>
                    <th>소개</th>
                    <td>${detail.introduction}</td>
                </tr>
                <tr>
                    <th>언어</th>
                    <td>${detail.language}</td>
                </tr>
                <tr>
                    <th>가격</th>
                    <td>${detail.price}</td>
                </tr>
                <tr>
                    <th>출판날짜</th>
                    <td>${detail.pubdate}</td>
                </tr>
                <tr>
                    <th>분류번호</th>
                    <td>${detail.classId}</td>
                </tr>
                <tr>
                    <th>책장번호</th>
                    <td>${detail.pressmark}</td>
                </tr>
                <tr>
                    <th>상태</th>
                    <c:if test="${detail.state==1}">
                        <td>대출안됨</td>
                    </c:if>
                    <c:if test="${detail.state==0}">
                        <td>대출됨</td>
                    </c:if>

                </tr>
                </tbody>
            </table>
            <button onclick="window.open('http://www.aladin.co.kr/shop/wproduct.aspx?isbn=${detail.isbn}','알라딘도서정보','width=860,height=800,location=no,status=no,scrollbars=yes');">알라딘 도서정보</button>
            <button onclick="window.open('http://image.aladdin.co.kr/coveretc/book/coveroff/${detail.isbn}_1.jpg','알라딘도서정보','width=430,height=500,location=no,status=no,scrollbars=yes');">알라딘 도서정보</button>
       
        </div>
    </div>

</div>

<div class="search_book">
    <fieldset class="srch">
            <legend>검색영역</legend>
            <input type="text" name="query" id="query" accesskey="s" title="검색어" class="keyword" value="애자일">
            <input type="button" id="search" name="search" alt="검색" value="검색" />
    </fieldset>
    
    <table cellspacing="0" border="1" summary="책검색 API 결과" class="tbl_type">
    <caption>책검색 API 결과</caption>
            <colgroup>
                    <col width="10%">
                    <col width="20%">
                    <col width="15%">
                    <col width="15%">
                    <col width="15%">
                    <col width="10%">
                    <col width="15%">
            </colgroup>
            <thead>
                    <tr>
                    <th scope="col">책표지</th>
                    <th scope="col">책이름</th>
                    <th scope="col">저자</th>
                    <th scope="col">출판사</th>
                    <th scope="col">출판년도</th>
                    <th scope="col">가격</th>
                    <th scope="col">ISBN</th>
                    </tr>
            </thead>
            <tbody id="list">
                    <tr class="__oldlist" style="">
                            <td colspan="7">검색 결과가 없습니다.</td>
                    </tr>
                    <tr class="__template" style="display: none">
                            <td><img src="#image#"  width="50px" height="70px" /></td>
                            <td>#title#</td>
                            <td>#author#</td>
                            <td>#publisher#</td>
                            <td>#pubdate#</td>
                            <td>#price#</td>
                            <td>#isbn#</td>
                    </tr>
            </tbody>
    </table>
    </div>

</body>

<script type="text/javascript">
    $('#search').click( function() {
            if($('#query').val() == ''){
                    alert('검색어를 입력해 주세요');
                    $('#query').focus();
            }else{
                    callAjax($('#query').val());
                    $('#name').val("");
            }
    });

    function callAjax(query) {
            $.ajax({
                    url:'book_proxy.php',
                    dataType:'json',
                    type:'POST',
                    data:{'query':query},
                    success:function(result){
                            $('#result').html('');
                            if(result['channel']['display'] > 0){
                                    $('.__oldlist').remove();
                                    for(var i in result['channel']['item']){
                                            var item = result['channel']['item'][i];
                                            $html = template('__template', item);
                                            $html.addClass('__oldlist');
                                            $('#list').append($html);
                                            $('.__oldlist').show();
                                    }
                                    
                            }else{
                                    $('#result').html('');
                                    $('#result').append("데이터가 없거나 정상적으로 로딩 되지 않았습니다.");
                            }
                    }
            });
    };

    function template(template_id, params){
            var c = $('.' + template_id).clone();
            var html = $('<div>').append(c).html();
            for(var key in params){
                    html = html.replace(new RegExp('#' + key + '#', 'g'), params[key]);
            }
            html = html.replace(/#template_([^#]*)#/g, '$1');
            var $html = $(html).removeClass(template_id).removeClass('__template');
            return $html;
    }
</script>


</html>
