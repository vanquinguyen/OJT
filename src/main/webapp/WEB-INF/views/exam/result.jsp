<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<div class="">
        <!-- The Modal -->
        <div class="" id="myModal" style="height:500px;">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">

                    <!-- Modal body -->
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
                                            <span style="color: red;font-weight: lighter;">${score}/10</span>
                                        </span>
                                    </div>

                                    <div class="show-text" style="text-align: center;border-radius: 5px;">
                                        <span class="span_fix3">
                                            Chúc mừng bạn đã hoàn thành!!!
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

                    <!-- Modal footer -->
                    <div class="modal-footer" style="display: flex;">
                        <button type="button" class="btn btn-danger" data-dismiss="modal" style="margin:auto;"><a href="<c:url value="/exam-${id}"/> ">Kết
                            thúc </a> </button>
                    </div>
                </div>
            </div>
        </div>

    </div>
