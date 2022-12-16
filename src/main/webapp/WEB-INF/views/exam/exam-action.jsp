<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="vi" class=" js no-touch">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Luyện thi</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Luyện thi" name="title">
    <meta content="Luyện thi" name="keywords">
    <meta content="Luyện thi" name="description">
    <meta property="og:title" content="Luyện thi">
    <meta property="og:description" content="Luyện thi">
    <meta property="og:type" content="website">
    <meta property="og:locale" content="vi_VN">
    <meta content="index,follow" name="robots">
    <meta http-equiv="Content-Language" content="vi">
    <meta name="Language" content="vi">
    <meta name="copyright" content="Copyright  2021 by JLPT Test">
    <meta name="abstract" content="JLPT Test">
    <meta name="distribution" content="Global">
    <meta name="author" content="JLPT Test">

    <!--CSS-->
    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href=" <c:url value="/resources/css/bootstrap.css"/> " />
    <!-- fonts style -->
    <link href=" <c:url value="/resources/css/css.css"/>" rel="stylesheet" >
    <!-- My style -->
    <link href=" <c:url value="/resources/css/home.css"/>" rel="stylesheet" />
    <!-- responsive style -->
    <link href=" <c:url value="/resources/css/responsive.css"/>" rel="stylesheet" />
    <link rel="stylesheet" href=" <c:url value="/resources/css/alphabet.css"/>">
    <link rel="stylesheet" href=" <c:url value="/resources/css/letters.css"/>">
    <link rel="stylesheet" href=" <c:url value="/resources/css/global.css"/>">

    <!-- My style -->
    <link href=" <c:url value="/resources/css/luyenthi.css"/>" rel="stylesheet" />
    <!-- style default  aaaaaaaaaaaa  chính là nó       -->
    <link href=" <c:url value="/resources/css/a_header.css"/>" rel="stylesheet">
    <link href=" <c:url value="/resources/css/b_header.css"/>" rel="stylesheet">
    <link href=" <c:url value="/resources/css/c_header.css"/>" rel="stylesheet">

 	<link rel="stylesheet" id="smartowl-responsive-css" href="css/res.css" type="text/css" media="all">
    <link rel="stylesheet" id="smartowl-style-css" href=" <c:url value="/resources/css/test/sty.css"/>" type="text/css" media="all">
    <link rel="stylesheet" id="smartowl-custom-buddypress-css" href=" <c:url value="/resources/css/test/custom-buddypress.css"/>"
        type="text/css" media="all">
    <link rel="stylesheet" id="smartowl-custom-style-css" href=" <c:url value="/resources/css/test/theme.css"/>" type="text/css"
        media="all">
    <link rel="stylesheet" id="learn-press-bundle-css" href=" <c:url value="/resources/css/test/bundle.min.css"/>" type="text/css"
        media="all">
     
     <!-- PNotify -->
	<link
		href="<c:url value="/adminResources/vendors/pnotify/dist/pnotify.css"/>"
		rel="stylesheet">
	<link
		href="<c:url value="/adminResources/vendors/pnotify/dist/pnotify.buttons.css"/>"
		rel="stylesheet">
	<link
		href="<c:url value="/adminResources/vendors/pnotify/dist/pnotify.nonblock.css"/>"
		rel="stylesheet">
        
        <!-- thêm css 09/08/2021 -->

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!--JS-->

    <script type="text/javascript" src=" <c:url value="/resources/js/jquery-3.4.1.min.js"/>"></script>

    <!-- "./Luyện thi_files/jquery-3.4.0.min.js.download" -->
    <!-- <script src="test.js"></script> -->

    <!-- Facebook Pixel Code -->
    <script>
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return; n = f.fbq = function () {
                n.callMethod ?
                    n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n; n.push = n; n.loaded = !0; n.version = '2.0';
            n.queue = []; t = b.createElement(e); t.async = !0;
            t.src = v; s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '849513498922228');
        fbq('track', 'PageView');
    </script>

    <style>
        .radio .check-box {
            top: 0;
        }

        .exam_item.active {
            font-weight: bold;
            color: #242c66;
            background: #d3e0ff;
        }

        .cart-sec table tr td {
            font-size: 12px;
            padding: 10px;
            font-weight: bold;
        }

        .exam_item {
            width: 25%;
            display: inline-block;

            border: 1px solid #ccc;
            padding: 5px;
        }

        .red {
            color: red !important;
            background: unset;
        }

        .ten-cau {
            font-size: 16px;
        }

        .form-radio .radio {
            width: 100%;
        }

        .form-radio .radio>label {
            color: #000;
        }

        .exam_item {
            text-align: center;
            cursor: pointer;
        }

        .exam_item.dung {
            background: #75f565;
            color: black;

        }

        .exam_item.sai {
            background: red;
            color: white;

        }

        .f-title {
            font-weight: bold !important;
        }

        .personal-head>p {
            color: #000;
        }

        .form-radio .radio label p {
            display: inline-block;
        }

        .gen-metabox p {
            color: #000;
            font-size: 16px;
            font-weight: 500;
            word-spacing: 9px;
        }

        .bang-dieu-khien {
            z-index: 9999;
        }

        .sidebar {
            display: inline-block;
            float: none;
            margin: 0 auto;
            width: 100%;
        }

        .gen-metabox {
            display: inline-block;
            width: 100%;
        }

        @media (max-width: 768px) {
            .personal-head .cart-sec {
                display: none;
            }
        }

        @media all and (min-width: 320px) {
            .bang-dieu-khien {
                z-index: 0;
            }
        }

        @media (min-width: 768px) {
            .topbar.transperent.stick {
                padding: 0;
                padding-left: 16px;
            }

            .cart-sec {
                max-height: 414px;
                overflow-y: scroll;
            }
        }


        /*CSS layout*/
        .central-meta {
            background: #fff none repeat scroll 0 0;
            border: 1px solid #ede9e9;
            border-radius: 5px;
            display: inline-block;
            width: 100%;
            margin-bottom: 20px;
            padding: 20px;
            position: relative;
        }

        .create-post {
            border-bottom: 1px solid #e6ecf5;
            display: block;
            font-weight: 500;
            font-size: 15px;
            line-height: 15px;
            margin-bottom: 20px;
            padding-bottom: 12px;
            text-transform: capitalize;
            width: 100%;
            color: #515365;
            position: relative;
        }

        .personal-head {
            display: inline-block;
            width: 100%;
        }

        .f-title {
            font-weight: bold !important;
        }

        .f-title {
            color: #515365;
            display: inline-block;
            font-size: 13px;
            font-weight: 500;
            margin-bottom: 5px;
            width: 100%;
            text-transform: capitalize;
        }

        .gen-metabox p {
            display: inline-block;
        }

        .fixed {
            position: fixed !important;
        }

        .bang-dieu-khien.fixed {
            margin-top: 8px;
            width: 357px;
            z-index: 99;
        }

        ul.timeline.fixed {
            top: 0;
            z-index: 999999;
            background: #fff;
            height: 105px;
        }

        .ky-nang {
            color: #fff;
            display: inline-block;
            width: 100%;
            font-size: 25px;
            background-color: #466ec4;
            padding: 1em;
            margin: 0;
        }

        .mondai {
            padding: 9px 18px;
            background: #eeeeee;
            display: inline-block;
            width: 100%;
            font-weight: bold;
            font-size: 15px;
            margin-bottom: 20px;
        }

        .AnswerList__title__3au8U.md {
            font-size: 18px;
            margin: .5em 0;
            width: 100%;
            display: inline-block;
            color: #4caf50;
        }

        .AnswerList__title__3au8U.chapter {
            display: inline-block;
            width: unset;
            padding: 10px;
            margin: 0;
            border: 1px #4caf50 solid;
            border-radius: 0;
            margin-top: 15px;
            background: #4caf50;
            color: #fff;
            border-radius: 10px;
        }

        button.solid-button {
            background-color: #4caf50 !important;
            border-color: #4caf50 !important;
        }

        .AnswerList__time__If1v5 {
            width: 70%;
            margin: 0 auto;
            color: #466ec4;
            padding: .5em;
            text-align: center;
            font-size: 20px;
            border: 2px solid #466ec4;
            border-radius: 10px;
        }

        .AnswerList__time__If1v5 {
            width: 70%;
            margin: 0 auto;
            color: #466ec4;
            padding: .5em;
            text-align: center;
            font-size: 20px;
            border: 2px solid #466ec4;
            border-radius: 10px;
        }

        button.solid-button {
            margin-top: 15px !important;
        }

        @media(max-width: 768px) {
            .timeline li {
                min-width: 102px;
            }

            .bang-dieu-khien,
            .nop_bai {
                text-align: center;
            }

            .fixed {
                position: relative !important;
            }

            .so_cau {
                width: 100%;
                display: inline-block;
            }

            .bang-dieu-khien.fixed {
                top: 0;
                width: 100%;
            }



            .AnswerList__time__If1v5 {
                background-color: #b5d1dcbf;
                opacity: 0.9;
            }
        }

        .AnswerList__time__If1v5 {
            display: none;
        }
    </style>
    <script>
        $(document).ready(function () {
            $('.exam_item').click(function () {
                var question_id = $(this).data('id');
                $('html,body').animate({
                    scrollTop: $('#question-' + question_id).offset().top - 100
                }, 'slow');
            });
        });
    </script>
    <style>
        div#expired {
            position: fixed;
            width: 100%;
            left: 0;
            top: 0;
            height: 100%;
            padding-top: 40%;
            text-align: center;
            background: rgba(117, 128, 138, 0.7);
        }

        li#l2::before,
        li#l4::before {
            width: 30px;
            height: 30px;
            margin-top: 10px;
            line-height: 25px;
        }

        @media(max-width: 768px) {
            .bang-trai {
                z-index: 999999;
            }

            .dong-ho-fixed {
                position: fixed !important;
                top: 0;
                z-index: 9999999999999999;
                left: 0;
                font-weight: bold;
            }

            .bg-yellow {
                background: #b5d1dc;
            }
        }
    </style>
</head>

<body>

    <div class="header_a">
        <header class="header_section">
                <div class="container-fluid">
                        <nav class="navbar navbar-expand-lg custom_nav-container ">
                                <!-- aaaaaaaaaaaaaaaaaaaaaaaaaaa -->
                                <a class="navbar-brand" href="home.html">
                                        <h3>
                                                Eight Team
                                        </h3>
                                        <span> Japaness</span>
                                </a>
                                <!-- aaaaaaaaaaaaaaaaaaaaaaaaaaa -->
                                <button class="navbar-toggler" type="button"
                                        data-toggle="collapse"
                                        data-target="#navbarSupportedContent"
                                        aria-controls="navbarSupportedContent"
                                        aria-expanded="false" aria-label="Toggle navigation">
                                        <span class="navbar-toggler-icon"></span>
                                </button>
                                <!-- aaaaaaaaaaaaaaaaaaaaaaaaaaa -->

                                <div class="navmenuTop_block collapse navbar-collapse"
                                        id="navbarSupportedContent">
                                        <div class="navmenu collapse navbar-collapse"
                                                id="navbarSupportedContent">
                                                <ul class="formatUl navbar-nav mr-auto">
                                                        <li class="nav-item active">
                                                                <a class="nav-link" href="<c:url value="/index"/>" title="Trang chủ">Trang chủ</a>
                                                        </li>
                                                        <li class="nav-item ">
                                                                <a class="nav-link" href="<c:url value="/gioithieu"/>" title="Giới thiệu">Giới Thiệu</a>
                                                        </li>
                                                  <li>
										                  <a class="nav-link" href="<c:url value="/course"/>">Các khóa Tiếng Nhật</a>
										                  <ul class="submenu formatUl nav-item">
										                    <li><a href="<c:url value="/bangchucai"/>" title="Bảng chữ cái">Bảng chữ cái tiếng Nhật</a>
										                    </li>
										                    <li><a href="<c:url value="/course-2"/>" title="Khóa học tiếng Nhật online N5">Khóa học tiếng Nhật
										                        online N5</a>
										                    </li>
										                    <li><a href="<c:url value="/course-3"/>" title="Khoá học tiếng nhật online N4">Khoá học tiếng nhật
										                        online N4</a>
										                    </li>
										                    <li><a href="<c:url value="/course-4"/>" title="Khoá học tiếng Nhật online N3">Khoá học tiếng Nhật
										                        online N3</a>
										                    </li>
										                    <li><a href="<c:url value="/course-5"/>" title="Khoá học tiếng Nhật online N2">Khoá học tiếng Nhật
										                        online N3-N4</a>
										                    </li>
										                    <li><a href="<c:url value="/course-6"/>" title="Khoá học tiếng Nhật online N1">Khoá học tiếng Nhật
										                        online N3-N4-N5</a>
										                    </li>
										                  </ul>
										                </li>

                                                        <li>
										                  <a class="nav-link" href="<c:url value="/luyenthi-n"/>">Luyện thi tiếng Nhật</a>
										                  <ul class="submenu formatUl nav-item">
										                    <li><a href="<c:url value="/luyenthi-n1"/>">Luyện thi tiếng Nhật N5</a>
										                    </li>
										                    <li><a href="<c:url value="/luyenthi-n2"/>">Luyện thi tiếng Nhật
										                        N4</a></li>
										                    <li><a href="<c:url value="/luyenthi-n3"/>">Luyện thi tiếng Nhật
										                        N3</a></li>
										                    <li><a href="<c:url value="/luyenthi-n4"/>">Luyện thi tiếng Nhật
										                        N2</a></li>
										                    <li><a href="<c:url value="/luyenthi-n5"/>">Luyện thi tiếng Nhật
										                        N1</a></li>
										                  </ul>
										                </li>
										                <c:choose>
										                    <c:when test="${sessionScope.userInfo!=null}">
										
										                        <li class="nav-item ml-3">
										                            <a class="nav-link">${sessionScope.userInfo.fullName}</a>
										                        </li>
										                        <li class="nav-item ml-3">
										                            <a class="nav-link" href="logout">Logout</a>
										                        </li>
										                    </c:when>
										                    <c:otherwise>
										                        <li class="nav-item">
										                            <a class="nav-link" href="login">Đăng Nhập</a>
										                        </li>
										                        <li class="nav-item">
												                  <a class="nav-link" href="register.html">Đăng ký</a>
												                </li>
										                    </c:otherwise>
										                </c:choose> 
                                                </ul>
                                        </div>
                                </div>
                        </nav>
                </div>
        </header>
</div>



    <div id="page" class="hfeed site">
        <!-- SMALL GRADIENT BAR -->
        <div class="colored-fullwidth-gradient vc_row"></div>
        <div class="theme-layout">
            <style>
                ul.timeline {
                    display: inline-block;
                    width: 100%;
                    padding: 0;
                }

                .timeline {
                    counter-reset: year 2020;
                    position: relative;
                }

                .timeline li {
                    list-style: none;
                    float: left;
                    width: 16.3333%;
                    position: relative;
                    text-align: center;
                    text-transform: uppercase;
                }

                ul:nth-child(1) {
                    color: #4caf50;
                }

                .timeline li:before {
                    counter-increment: year;
                    content: counter(year);
                    width: 50px;
                    height: 50px;
                    border: 3px solid #4caf50;
                    border-radius: 50%;
                    display: block;
                    text-align: center;
                    line-height: 50px;
                    margin: 0 auto 10px auto;
                    background: #F1F1F1;
                    color: #000;
                    transition: all ease-in-out .3s;
                    cursor: pointer;
                }

                .timeline li:after {
                    content: "";
                    position: absolute;
                    width: 100%;
                    height: 1px;
                    background-color: grey;
                    top: 25px;
                    left: -50%;
                    z-index: -999;
                    transition: all ease-in-out .3s;
                }

                .timeline li:first-child:after {
                    content: none;
                }

                .timeline li.active {
                    color: #555555;
                }

                .timeline li.active:before {
                    background: #4caf50;
                    color: #F1F1F1;
                }

                .timeline li.active+li:after {
                    background: #4caf50;
                }

                .timeline:before {
                    background: none;
                }

                .question-timeline {
                    text-align: center;
                    padding-top: 10px;
                }

                ul.timeline {
                    width: unset;
                }

                .timeline li {
                    width: unset;
                    min-width: 130px;
                }

                .question-timeline.fixed {
                    z-index: 999;
                    width: 100%;
                    background: #fff;
                    top: 0;
                }

                #modeltheme-main-head.fixed {
                    top: 0;
                    position: relative !important;
                }

                audio {
                    max-width: 100%;
                }

                @media (max-width: 768px) {
                    .timeline li {
                        font-size: 10px;
                    }

                    .timeline li:before {
                        width: 40px;
                        height: 40px;
                        line-height: 38px;
                        margin-top: 4px;
                    }
                }
            </style>

            <script>
                //  Time chạy theo
                var $obj_timeline = $('.question-timeline');
                var top_timeline = $obj_timeline.offset().top - parseFloat($obj_timeline.css('marginTop').replace(/auto/, 0));

                $(window).scroll(function (event) {
                    // what the y position of the scroll is
                    var y = $(this).scrollTop();

                    // whether that's below the form
                    if (y >= top_timeline) {
                        // if so, ad the fixed class
                        $obj_timeline.addClass('fixed');
                    } else {
                        // otherwise remove it
                        $obj_timeline.removeClass('fixed');
                    }
                });
            </script>
            <section>
                <div class="gap2 gray-bg" style="background-color: aliceblue;">
                    <div class="container">
                        <div class="row merged20" id="page-contents">
                            <form  method="POST" action="${pageContext.request.contextPath}/exam-${exam.id}/submit">
                                <input type="hidden" name="_token" value="mUGoUfOt3HFaAddmWUYPr0XomJCOruj725r7xYfT">
                                <input type="hidden" name="het_gio" value="0">
                                <input type="hidden" name="order_no" value="1">
                                <div class="col-lg-4 col-md-4 bang-trai">
                                    <aside class="sidebar">
                                        <div class="central-meta stick-widget bang-dieu-khien fixed">
                                            <span class="create-post">Đề thi trình độ N5</span>
                                            <div class="personal-head dong-ho-mobile">
                                                <div class="AnswerList__time__If1v5"><span id="deadline_time"
                                                        class="CountdownTimer__time__2tG6l">0:30:00</span></div>

                                                <div class="cart-sec">
                                                    <div style="width: 100%; display: inline-block;">
                                                        <div class="AnswerList__title__3au8U chapter"
                                                            style="background-color: #216295; border:#216295; ">Kỹ
                                                            năng: 文字・語彙</div>
                                                    </div>
                                                    <div class="AnswerList__title__3au8U md">問題1</div>
													
													<c:forEach items="${QuestionList}" var="question" varStatus="loopp"> 
                                                    <div class="exam_item exam_item-${question.id} " data-key="${question.id}" data-id="${question.id}">
                                                        ${loopp.index+1}
                                                    </div>
													</c:forEach>
                                                    

                                                </div>
                                            </div>
                                           <!--  <button class="solid-button button form-control" type="submit"
                                                data-ripple=""
                                                style="float: none; background-color: #93beda !important; border: #93beda !important;">Nộp
                                                bài
                                            </button> -->
                                            	<button type="submit" onclick="confirmSubmit(${exam.id});" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="margin: 0 25%; 
                                                background-color: #93beda !important; border: #93beda !important; width: 50%;">
                                                    Nộp bài
                                                </button>

                                        </div>
                                    </aside>
                                </div>
                                
                                
                                
                                <div class="col-lg-8 col-md-8" style="margin-left: 400px; position: relative;">
                                    <div class="central-meta" action="" method="POST">
                                        <span class="create-post">Nội dung đề thi</span>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div style="text-align: center;" class="ky-nang">
                                                    スキル: 文字・語彙</div>
                                         <div class="mondai">問題1:
                                                    _____のことばの読み方として最もよいものを、１・２・３・４から一つえらびなさい。</div>       
                                                
                                         <c:forEach items="${QuestionList}" var="question" varStatus="loop">     
                                                <div class="gen-metabox" id="question-${question.id}"
                                                    style="display: inline-block; ">
                                                    <span style="color: red;" class="so_cau">Câu${loop.index+1}:</span>


                                                    ${question.content}
                                                    <input type="hidden" name="questionId" value="${question.id}">

                                                    <div class="col-md-12 select-radio">
                                                        <div class="form-radio">
                                                        <c:forEach items="${question.answers}" var="answer" varStatus="loop1">
                                                            <div class="col-xs-12 radio">
                                                                <label data-id="${question.id}">
                                                                    <input type="radio" name="question_${question.id}" value="${answer.id}" ><i
                                                                        class="check-box"></i><span
                                                                        style="color: blue;">${loop1.index+1}:</span> ${answer.content}
                                                                </label>
                                                            </div>
                                                         </c:forEach>   
                                                        </div>
                                                    </div>
                                                </div>
                                               </c:forEach>  
                                                
                                            </div>
                                        </div>
                                        <div class="div-nop_bai">
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="width: 100%;background-color: #4caf50;">
                                                    Nộp bài
                                                </button>


                                            <div class="modal fade" id="myModal">
                                                <div class="modal-dialog modal-dialog-centered">
                                                    <div class="modal-content">
                                                        <div class="modal-body">
                                                            <div class="col-">
                                                                <div class="showMore" action="" method="POST">
                                                                    <div class="top-showMore" style="display: flex;">
                                                                        <span class="span_fix">
                                                                                Kết quả bài thi</span>
                                                                    </div>
                                                                    <div class="center-showMore">
                                                                        <div class="show-diem" style="text-align: center;">
                                                                            <span class="span_fix2">
                                                                                    Số câu trả lời đúng là:
                                                                                    <span style="color: red;font-weight: lighter;">15/30</span>
                                                                            </span>
                                                                        </div>

                                                                        <div class="show-text" style="text-align: center;border-radius: 5px;">
                                                                            <span class="span_fix3">
                                                                                    Chúc mừng bạn đã vượt qua kỳ thi!!!
                                                                                </span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>


                                                            <style>
                                                                .showMore {
                                                                    background: #fff none repeat scroll 0 0;
                                                                    border: 3px solid #003994;
                                                                    border-radius: 5px;
                                                                    display: inline-block;
                                                                    width: 100%;
                                                                    padding: 0 15px 15px 15px;
                                                                    position: relative;
                                                                }
                                                                
                                                                .top-showMore {
                                                                    display: block;
                                                                    margin: auto;
                                                                    height: 36px;
                                                                    width: 40%;
                                                                    background-color: rgb(57, 181, 253);
                                                                    font-size: 28px;
                                                                    font-weight: bold;
                                                                    border-radius: 5px;
                                                                    margin-bottom: 10px;
                                                                    margin-top: 10px;
                                                                }
                                                                
                                                                .span_fix {
                                                                    display: block;
                                                                    width: 240px;
                                                                    margin: auto;
                                                                    text-align: center;
                                                                    font-weight: bold;
                                                                    font-size: 22px;
                                                                    border: 2px;
                                                                    border-color: #222
                                                                }
                                                                
                                                                .span_fix2 {
                                                                    display: block;
                                                                    margin: auto;
                                                                    padding-top: 15px;
                                                                    text-align: center;
                                                                    font-weight: bolder;
                                                                    font-size: 30px;
                                                                    border: 2px;
                                                                }
                                                                
                                                                .span_fix3 {
                                                                    display: block;
                                                                    padding-top: 5px;
                                                                }
                                                                
                                                                .show-diem {
                                                                    margin: auto;
                                                                    height: 72px;
                                                                    width: 100%;
                                                                    background-color: rgb(28, 137, 201);
                                                                    border-radius: 5px;
                                                                }
                                                                
                                                                .show-text {
                                                                    margin: auto;
                                                                    margin-top: 10px;
                                                                    height: 32px;
                                                                    background-color: #eeeeee;
                                                                    border-radius: 5px;
                                                                }
                                                            </style>


                                                        </div>


                                                        <div class="modal-footer" style="display: flex;">
                                                            
                                                            <button type="button" class="btn btn-danger" data-dismiss="modal" style="margin:auto;">Kết
                                                                    thúc</button>

                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <div class="class-back-to-top">
            <a class="back-to-top" href="javascript:;">
                <i class="fas fa-bars"></i>

            </a>
        </div>
        <style>
            .back-to-top {
                background: url(/public/frontend/themes/sach100/themes/smartowl/images/mt-to-top-arrow.svg) no-repeat center center;
                opacity: .5;
                background-color: #4e6bee;
                display: inline-block;
                height: 40px;
                width: 40px;
                
                bottom: 40px;
                right: 40px;
                
                overflow: hidden;
                text-indent: 100%;
                white-space: nowrap;
                visibility: visible;

                border: solid black;
                border-width: 0 3px 3px 0;
                display: inline-block;
                padding: 30px;
                transform: rotate(-135deg);
                -webkit-transform: rotate(-135deg);
                position: fixed;
            }
        </style>

        <script>
            jQuery(window).scroll(function () {
                if (jQuery(this).scrollTop()) {
                    jQuery('.back-to-top').fadeIn();
                } else {
                    jQuery('.back-to-top').fadeOut();
                }
            });
            jQuery(".back-to-top").click(function () {
                jQuery("html, body").animate({ scrollTop: 0 }, 1000);
            });
        </script>
        <style>
            footer a,
            footer h4,
            footer p {
                color: #000 !important;
            }
        </style>
    </div>

    <script type="text/javascript">
        var ajaxRevslider;

        jQuery(document).ready(function () {


            // CUSTOM AJAX CONTENT LOADING FUNCTION
            ajaxRevslider = function (obj) {

                // obj.type : Post Type
                // obj.id : ID of Content to Load
                // obj.aspectratio : The Aspect Ratio of the Container / Media
                // obj.selector : The Container Selector where the Content of Ajax will be injected. It is done via the Essential Grid on Return of Content

                var content = '';
                var data = {
                    action: 'revslider_ajax_call_front',
                    client_action: 'get_slider_html',
                    token: 'f4900c10bd',
                    type: obj.type,
                    id: obj.id,
                    aspectratio: obj.aspectratio
                };

                // SYNC AJAX REQUEST
                jQuery.ajax({
                    type: 'post',
                    url: './wp-admin/admin-ajax.php',
                    dataType: 'json',
                    data: data,
                    async: false,
                    success: function (ret, textStatus, XMLHttpRequest) {
                        if (ret.success == true)
                            content = ret.data;
                    },
                    error: function (e) {
                        console.log(e);
                    }
                });

                // FIRST RETURN THE CONTENT WHEN IT IS LOADED !!
                return content;
            };

            // CUSTOM AJAX FUNCTION TO REMOVE THE SLIDER
            var ajaxRemoveRevslider = function (obj) {
                return jQuery(obj.selector + ' .rev_slider').revkill();
            };


            // EXTEND THE AJAX CONTENT LOADING TYPES WITH TYPE AND FUNCTION
            if (jQuery.fn.tpessential !== undefined)
                if (typeof (jQuery.fn.tpessential.defaults) !== 'undefined')
                    jQuery.fn.tpessential.defaults.ajaxTypes.push({
                        type: 'revslider',
                        func: ajaxRevslider,
                        killfunc: ajaxRemoveRevslider,
                        openAnimationSpeed: 0.3
                    });
            // type:  Name of the Post to load via Ajax into the Essential Grid Ajax Container
            // func: the Function Name which is Called once the Item with the Post Type has been clicked
            // killfunc: function to kill in case the Ajax Window going to be removed (before Remove function !
            // openAnimationSpeed: how quick the Ajax Content window should be animated (default is 0.3)


        });
    </script>
    <script>
        (function (body) {
            'use strict';
            body.className = body.className.replace(/\btribe-no-js\b/, 'tribe-js');
        })(document.body);
    </script>

    <div id="yith-quick-view-modal">

        <div class="yith-quick-view-overlay"></div>

        <div class="yith-wcqv-wrapper">

            <div class="yith-wcqv-main">

                <div class="yith-wcqv-head">
                    <a href="https://jlpttest.vn/de-thi/49176#" id="yith-quick-view-close" class="yith-wcqv-close">X</a>
                </div>

                <div id="yith-quick-view-content" class="woocommerce single-product"></div>
            </div>
        </div>
    </div>

    <link href=" <c:url value="/resources/test/est/css(1)"/>" rel="stylesheet" property="stylesheet" media="all" type="text/css">
    <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="pswp__bg"></div>
        <div class="pswp__scroll-wrap">
            <div class="pswp__container">
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
            </div>
            <div class="pswp__ui pswp__ui--hidden">
                <div class="pswp__top-bar">
                    <div class="pswp__counter"></div>
                    <button class="pswp__button pswp__button--close" aria-label="Close (Esc)"></button>
                    <button class="pswp__button pswp__button--share" aria-label="Share"></button>
                    <button class="pswp__button pswp__button--fs" aria-label="Toggle fullscreen"></button>
                    <button class="pswp__button pswp__button--zoom" aria-label="Zoom in/out"></button>
                    <div class="pswp__preloader">
                        <div class="pswp__preloader__icn">
                            <div class="pswp__preloader__cut">
                                <div class="pswp__preloader__donut"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                    <div class="pswp__share-tooltip"></div>
                </div>
                <button class="pswp__button pswp__button--arrow--left" aria-label="Previous (arrow left)"></button>
                <button class="pswp__button pswp__button--arrow--right" aria-label="Next (arrow right)"></button>
                <div class="pswp__caption">
                    <div class="pswp__caption__center"></div>
                </div>
            </div>
        </div>
    </div>
    <link rel="stylesheet" id="photoswipe-default-skin-css" href=" <c:url value="/resources/css/test/default-skin.min.css"/>"
        type="text/css" media="all">




    <style>
        .AnswerList__time__If1v5 {
            display: block !important;
        }
    </style>

    <!-- abcdef -->
    <script>
        // Set the date we're counting down to
        var countDownDate = new Date("Aug 15, 2021 15:37:25").getTime();

        // Update the count down every 1 second
        var x = setInterval(function () {

            // Get today's date and time
            var now = new Date().getTime();

            // Find the distance between now and the count down date
            var distance = countDownDate - now;

            // Time calculations for days, hours, minutes and seconds

            var hours = Math.floor((distance % (1000 * 60 * 60 * 1)) / (1000 * 60 * 60));
            var minutes = Math.floor((distance % (1000 * 60 * 24)) / (1000 * 60));
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);

            // Output the result in an element with id="demo"
            document.getElementById("deadline_time").innerHTML = hours + " : "
                + minutes + " : " + seconds + "";

            // If the count down is over, write some text 
            /* if (distance < 0) {
                clearInterval(x);
                document.getElementById("deadline_time").innerHTML = "Hết giờ";
                // $('input[name=het_gio]').val('1');
                // $('button[type=submit]').click();
            } */
        }, 1000);

    </script>



    <!-- div trái -->
    <script>
        //  Bảng điều khiển chạy theo màn hình
        $(document).ready(function () {
            var $obj = $('.bang-dieu-khien');
            var top = $obj.offset().top - parseFloat($obj.css('marginTop').replace(/auto/, 0));

            $(window).scroll(function (event) {
                // what the y position of the scroll is
                var y = $(this).scrollTop();

                // whether that's below the form
                if (y >= top) {
                    // if so, ad the fixed class
                    $obj.addClass('fixed');
                } else {
                    // otherwise remove it
                    $obj.removeClass('fixed');
                }
            });


            if (window.innerWidth < 768) {
                var $obj = $('.dong-ho-mobile');
                var top = $obj.offset().top - parseFloat($obj.css('marginTop').replace(/auto/, 0));

                $(window).scroll(function (event) {
                    // what the y position of the scroll is
                    var y = $(this).scrollTop();

                    // whether that's below the form
                    if (y >= top) {
                        // if so, ad the fixed class
                        $obj.addClass('dong-ho-fixed');
                    } else {
                        // otherwise remove it
                        $obj.removeClass('dong-ho-fixed');
                    }
                });
            }
        });

        window.onbeforeunload = function () {
            if ($('input[name=bo_qua_canh_bao]').val() == '0') {
                return "Tải lại trang web sẽ làm mất các câu bạn đã trả lời. Bạn có chắc chắn muốn tải lại?";
            }
        };


        //  Click chọn đáp án nào bên phải sẽ tự điền vào bên trái
       $(document).ready(function () {
            $('.select-radio label').click(function () {
                var id = $(this).data('id');
                /*                var key = $('.exam_item-' + id).data('key').toString().replace("_", ".");
 */                /*console.log(key);
                if (key.indexOf("_") != -1) {
                    key = key.replace("_", ".");
                }*/

                /* var dap_an = [];
                dap_an['a'] = 1;
                dap_an['b'] = 2;
                dap_an['c'] = 3;
                dap_an['d'] = 4;

                $('.exam_item-' + id).html(key + '. ' + dap_an[$(this).find('input').val()]);
                $('.exam_item-' + id).addClass('active');

                $(this).parents('.gen-metabox').addClass('bg-yellow');
            }); */
        });
    </script>
	<script type="text/javascript">
	function confirmSubmit(id){
	 	if(confirm('Do you want nop bai')){
		 	window.location.href = '<c:url value="exam-id/submit"/>';
	 	}
	}
	$(document).ready(function(){
		processMesseage();
	});
	function processMesseage(){
		var msgSuccess = '${msgSuccess}';
		var msgError = '${msgError}';
		if(msgSuccess){
			new PNotify({
                title: 'Success',
                text: msgSuccess,
                type: 'success',
                styling: 'bootstrap3'
            });
		}
		if(msgError){
			new PNotify({
                title: 'Error',
                text: msgError,
                type: 'error',
                styling: 'bootstrap3'
            });
		}
	}
	</script>
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W4PRC76" height="0" width="0"
            style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
	<!-- PNotify -->
	<script
		src="<c:url value="/adminResources/vendors/pnotify/dist/pnotify.js"/>"></script>
	<script
		src="<c:url value="/adminResources/vendors/pnotify/dist/pnotify.buttons.js"/>"></script>
	<script
		src="<c:url value="/adminResources/vendors/pnotify/dist/pnotify.nonblock.js"/>"></script>

</body>

</html>