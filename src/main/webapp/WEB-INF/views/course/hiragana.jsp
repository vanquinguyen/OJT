<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet" href=" <c:url value="/resources/css/alphabet.css"/>">
 <link rel="stylesheet" href=" <c:url value="/resources/css/letters.css"/>">
 <link rel="stylesheet" href=" <c:url value="/resources/css/global.css"/>"> 
 
 <div id="app" class="">

        <!-- contents -->
        <div id="contents-block">
            <section id="letters-block">
                <div class="inner-block">
                    <h1 class="circle-title"><i></i><span>Chữ cái tiếng Nhật</span></h1>
                    <div class="desc-txt">
                        <p>Tiếng Nhật có 2 loại chữ là: Hiragana, Katakana.<br>
                            Hiragana và Katakana là chữ biểu âm, mỗi chữ thể hiện 1 âm.</p>
                        <p> Để học thêm tiếng Nhật, bấm vào <a href="khoahoc.html" style="color: blue;"> đây</a>.
                        </p>
                    </div>
                </div>
                <div class="line-block">
                    <div class="line">
                        <ul class="switch-block">
                            <li class="is-active"><a href="hiragana">Hiragana</a></li>
                            <li><a href="bangchucai">Katakana</a></li>

                        </ul>
                    </div>
                    <div class="inside-block">
                        <div class="module-letters">
                            <p class="desc-txt">Bấm để nghe cách phát âm mỗi chữ</p>
                            <div class="module-letters-content">
                                <div class="module-letters-block" style="display: block;">
                                    <ul class="letters-list">

                                        <li class="module-modal" data-id="0"><img src=" <c:url value="/resources/img_hiragana/a.png"/>" alt="a">
                                        </li>
                                        <li class="module-modal" data-id="1"><img src=" <c:url value="/resources/img_hiragana/i.png"/>" alt="i">
                                        </li>
                                        <li class="module-modal" data-id="2"><img src=" <c:url value="/resources/img_hiragana/u.png"/>" alt="u">
                                        </li>
                                        <li class="module-modal" data-id="3"><img src=" <c:url value="/resources/img_hiragana/e.png"/>" alt="e">
                                        </li>
                                        <li class="module-modal" data-id="4"><img src=" <c:url value="/resources/img_hiragana/o.png"/>" alt="o">
                                        </li>

                                        <li class="module-modal" data-id="5"><img src=" <c:url value="/resources/img_hiragana/ka.png"/>" alt="ka">
                                        </li>
                                        <li class="module-modal" data-id="6"><img src=" <c:url value="/resources/img_hiragana/ki.png"/>" alt="ki">
                                        </li>
                                        <li class="module-modal" data-id="7"><img src=" <c:url value="/resources/img_hiragana/ku.png"/>" alt="ku">
                                        </li>
                                        <li class="module-modal" data-id="8"><img src=" <c:url value="/resources/img_hiragana/ke.png"/>" alt="ke">
                                        </li>
                                        <li class="module-modal" data-id="9"><img src=" <c:url value="/resources/img_hiragana/ko.png"/>" alt="ko">
                                        </li>

                                        <li class="module-modal" data-id="10"><img src=" <c:url value="/resources/img_hiragana/sa.png"/>" alt="sa">
                                        </li>
                                        <li class="module-modal" data-id="11"><img src=" <c:url value="/resources/img_hiragana/shi.png"/>" alt="shi">
                                        </li>
                                        <li class="module-modal" data-id="12"><img src=" <c:url value="/resources/img_hiragana/su.png"/>" alt="su">
                                        </li>
                                        <li class="module-modal" data-id="13"><img src=" <c:url value="/resources/img_hiragana/se.png"/>" alt="se">
                                        </li>
                                        <li class="module-modal" data-id="14"><img src=" <c:url value="/resources/img_hiragana/so.png"/>" alt="so">
                                        </li>

                                        <li class="module-modal" data-id="15"><img src=" <c:url value="/resources/img_hiragana/ta.png"/>" alt="ta">
                                        </li>
                                        <li class="module-modal" data-id="16"><img src=" <c:url value="/resources/img_hiragana/chi.png"/>" alt="chi">
                                        </li>
                                        <li class="module-modal" data-id="17"><img src=" <c:url value="/resources/img_hiragana/tsu.png"/>" alt="tsu">
                                        </li>
                                        <li class="module-modal" data-id="18"><img src=" <c:url value="/resources/img_hiragana/te.png"/>" alt="te">
                                        </li>
                                        <li class="module-modal" data-id="19"><img src=" <c:url value="/resources/img_hiragana/to.png"/>" alt="to">
                                        </li>

                                        <li class="module-modal" data-id="20"><img src=" <c:url value="/resources/img_hiragana/na.png"/>" alt="na">
                                        </li>
                                        <li class="module-modal" data-id="21"><img src=" <c:url value="/resources/img_hiragana/ni.png"/>" alt="ni">
                                        </li>
                                        <li class="module-modal" data-id="22"><img src=" <c:url value="/resources/img_hiragana/nu.png"/>" alt="nu">
                                        </li>
                                        <li class="module-modal" data-id="23"><img src=" <c:url value="/resources/img_hiragana/ne.png"/>" alt="ne">
                                        </li>
                                        <li class="module-modal" data-id="24"><img src=" <c:url value="/resources/img_hiragana/no.png"/>" alt="no">
                                        </li>

                                        <li class="module-modal" data-id="25"><img src=" <c:url value="/resources/img_hiragana/ha.png"/>" alt="ha">
                                        </li>
                                        <li class="module-modal" data-id="26"><img src=" <c:url value="/resources/img_hiragana/hi.png"/>" alt="hi">
                                        </li>
                                        <li class="module-modal" data-id="27"><img src=" <c:url value="/resources/img_hiragana/fu.png"/>" alt="fu">
                                        </li>
                                        <li class="module-modal" data-id="28"><img src=" <c:url value="/resources/img_hiragana/he.png"/>" alt="he">
                                        </li>
                                        <li class="module-modal" data-id="29"><img src=" <c:url value="/resources/img_hiragana/ho.png"/>" alt="ho">
                                        </li>

                                        <li class="module-modal" data-id="30"><img src=" <c:url value="/resources/img_hiragana/ma.png"/>" alt="ma">
                                        </li>
                                        <li class="module-modal" data-id="31"><img src=" <c:url value="/resources/img_hiragana/mi.png"/>" alt="mi">
                                        </li>
                                        <li class="module-modal" data-id="32"><img src=" <c:url value="/resources/img_hiragana/mu.png"/>" alt="mu">
                                        </li>
                                        <li class="module-modal" data-id="33"><img src=" <c:url value="/resources/img_hiragana/me.png"/>" alt="me">
                                        </li>
                                        <li class="module-modal" data-id="34"><img src=" <c:url value="/resources/img_hiragana/mo.png"/>" alt="mo">
                                        </li>

                                        <li class="module-modal" data-id="35"><img src=" <c:url value="/resources/img_hiragana/ya.png"/>" alt="ya">
                                        </li>
                                        <li></li>
                                        <li class="module-modal" data-id="36"><img src=" <c:url value="/resources/img_hiragana/yu.png"/>" alt="yu">
                                        </li>
                                        <li></li>
                                        <li class="module-modal" data-id="37"><img src=" <c:url value="/resources/img_hiragana/yo.png"/>" alt="yo">
                                        </li>

                                        <li class="module-modal" data-id="38"><img src=" <c:url value="/resources/img_hiragana/ra.png"/>" alt="ra">
                                        </li>
                                        <li class="module-modal" data-id="39"><img src=" <c:url value="/resources/img_hiragana/ri.png"/>" alt="ri">
                                        </li>
                                        <li class="module-modal" data-id="40"><img src=" <c:url value="/resources/img_hiragana/ru.png"/>" alt="ru">
                                        </li>
                                        <li class="module-modal" data-id="41"><img src=" <c:url value="/resources/img_hiragana/re.png"/>" alt="re">
                                        </li>
                                        <li class="module-modal" data-id="42"><img src=" <c:url value="/resources/img_hiragana/ro.png"/>" alt="ro">
                                        </li>

                                        <li class="module-modal" data-id="43"><img src=" <c:url value="/resources/img_hiragana/wa.png"/>" alt="wa">
                                        </li>
                                        <li></li>
                                        <li class="module-modal" data-id="44"><img src=" <c:url value="/resources/img_hiragana/wo.png"/>" alt="wo">
                                        </li>
                                        <li></li>
                                        <li class="module-modal" data-id="45"><img src=" <c:url value="/resources/img_hiragana/n.png"/>" alt="n">
                                        </li>

                                    </ul>
                                </div>
                                <div class="module-letters-block" style="display: block;">
                                    <ul class="letters-list">

                                        <li class="module-modal" data-id="46"><img src=" <c:url value="/resources/img_hiragana/ga.png"/>" alt="ga">
                                        </li>
                                        <li class="module-modal" data-id="47"><img src=" <c:url value="/resources/img_hiragana/gi.png"/>" alt="gi">
                                        </li>
                                        <li class="module-modal" data-id="48"><img src=" <c:url value="/resources/img_hiragana/gu.png"/>" alt="gu">
                                        </li>
                                        <li class="module-modal" data-id="49"><img src=" <c:url value="/resources/img_hiragana/ge.png"/>" alt="ge">
                                        </li>
                                        <li class="module-modal" data-id="50"><img src=" <c:url value="/resources/img_hiragana/go.png"/>" alt="go">
                                        </li>

                                        <li class="module-modal" data-id="51"><img src=" <c:url value="/resources/img_hiragana/za.png"/>" alt="za">
                                        </li>
                                        <li class="module-modal" data-id="52"><img src=" <c:url value="/resources/img_hiragana/ji.png"/>" alt="ji">
                                        </li>
                                        <li class="module-modal" data-id="53"><img src=" <c:url value="/resources/img_hiragana/zu.png"/>" alt="zu">
                                        </li>
                                        <li class="module-modal" data-id="54"><img src=" <c:url value="/resources/img_hiragana/ze.png"/>" alt="ze">
                                        </li>
                                        <li class="module-modal" data-id="55"><img src=" <c:url value="/resources/img_hiragana/zo.png"/>" alt="zo">
                                        </li>

                                        <li class="module-modal" data-id="56"><img src=" <c:url value="/resources/img_hiragana/da.png"/>" alt="da">
                                        </li>
                                        <li class="module-modal" data-id="57"><img src=" <c:url value="/resources/img_hiragana/ji2.png"/>" alt="ji">
                                        </li>
                                        <li class="module-modal" data-id="58"><img src=" <c:url value="/resources/img_hiragana/zu2.png"/>" alt="zu">
                                        </li>
                                        <li class="module-modal" data-id="59"><img src=" <c:url value="/resources/img_hiragana/de.png"/>" alt="de">
                                        </li>
                                        <li class="module-modal" data-id="60"><img src=" <c:url value="/resources/img_hiragana/do.png"/>" alt="do">
                                        </li>

                                        <li class="module-modal" data-id="61"><img src=" <c:url value="/resources/img_hiragana/ba.png"/>" alt="ba">
                                        </li>
                                        <li class="module-modal" data-id="62"><img src=" <c:url value="/resources/img_hiragana/bi.png"/>" alt="bi">
                                        </li>
                                        <li class="module-modal" data-id="63"><img src=" <c:url value="/resources/img_hiragana/bu.png"/>" alt="bu">
                                        </li>
                                        <li class="module-modal" data-id="64"><img src=" <c:url value="/resources/img_hiragana/be.png"/>" alt="be">
                                        </li>
                                        <li class="module-modal" data-id="65"><img src=" <c:url value="/resources/img_hiragana/bo.png"/>" alt="bo">
                                        </li>

                                        <li class="module-modal" data-id="66"><img src=" <c:url value="/resources/img_hiragana/pa.png"/>" alt="pa">
                                        </li>
                                        <li class="module-modal" data-id="67"><img src=" <c:url value="/resources/img_hiragana/pi.png"/>" alt="pi">
                                        </li>
                                        <li class="module-modal" data-id="68"><img src=" <c:url value="/resources/img_hiragana/pu.png"/>" alt="pu">
                                        </li>
                                        <li class="module-modal" data-id="69"><img src=" <c:url value="/resources/img_hiragana/pe.png"/>" alt="pe">
                                        </li>
                                        <li class="module-modal" data-id="70"><img src=" <c:url value="/resources/img_hiragana/po.png"/>" alt="po">
                                        </li>

                                        <li class="module-modal sonant" data-id="71"><img src=" <c:url value="/resources/img_hiragana/kya.png"/>"
                                                alt="kya">
                                        </li>
                                        <li class="module-modal sonant" data-id="72"><img src=" <c:url value="/resources/img_hiragana/kyu.png"/>"
                                                alt="kyu">
                                        </li>
                                        <li class="module-modal sonant" data-id="73"><img src=" <c:url value="/resources/img_hiragana/kyo.png"/>"
                                                alt="kyo">
                                        </li>

                                        <li class="module-modal sonant" data-id="74"><img src=" <c:url value="/resources/img_hiragana/sha.png"/>"
                                                alt="sha">
                                        </li>
                                        <li class="module-modal sonant" data-id="75"><img src=" <c:url value="/resources/img_hiragana/shu.png"/>"
                                                alt="shu">
                                        </li>
                                        <li class="module-modal sonant" data-id="76"><img src=" <c:url value="/resources/img_hiragana/sho.png"/>"
                                                alt="sho">
                                        </li>

                                        <li class="module-modal sonant" data-id="77"><img src=" <c:url value="/resources/img_hiragana/cha.png"/>"
                                                alt="cha">
                                        </li>
                                        <li class="module-modal sonant" data-id="78"><img src=" <c:url value="/resources/img_hiragana/chu.png"/>"
                                                alt="chu">
                                        </li>
                                        <li class="module-modal sonant" data-id="79"><img src=" <c:url value="/resources/img_hiragana/cho.png"/>"
                                                alt="cho">
                                        </li>

                                        <li class="module-modal sonant" data-id="80"><img src=" <c:url value="/resources/img_hiragana/nya.png"/>"
                                                alt="nya">
                                        </li>
                                        <li class="module-modal sonant" data-id="81"><img src=" <c:url value="/resources/img_hiragana/nyu.png"/>"
                                                alt="nyu">
                                        </li>
                                        <li class="module-modal sonant" data-id="82"><img src=" <c:url value="/resources/img_hiragana/nyo.png"/>"
                                                alt="nyo">
                                        </li>

                                        <li class="module-modal sonant" data-id="83"><img src=" <c:url value="/resources/img_hiragana/hya.png"/>"
                                                alt="hya">
                                        </li>
                                        <li class="module-modal sonant" data-id="84"><img src=" <c:url value="/resources/img_hiragana/hyu.png"/>"
                                                alt="hyu">
                                        </li>
                                        <li class="module-modal sonant" data-id="85"><img src=" <c:url value="/resources/img_hiragana/hyo.png"/>"
                                                alt="hyo">
                                        </li>

                                        <li class="module-modal sonant" data-id="86"><img src=" <c:url value="/resources/img_hiragana/mya.png"/>"
                                                alt="mya">
                                        </li>
                                        <li class="module-modal sonant" data-id="87"><img src=" <c:url value="/resources/img_hiragana/myu.png"/>"
                                                alt="myu">
                                        </li>
                                        <li class="module-modal sonant" data-id="88"><img src=" <c:url value="/resources/img_hiragana/myo.png"/>"
                                                alt="myo">
                                        </li>

                                        <li class="module-modal sonant" data-id="89"><img src=" <c:url value="/resources/img_hiragana/rya.png"/>"
                                                alt="rya">
                                        </li>
                                        <li class="module-modal sonant" data-id="90"><img src=" <c:url value="/resources/img_hiragana/ryu.png"/>"
                                                alt="ryu">
                                        </li>
                                        <li class="module-modal sonant" data-id="91"><img src=" <c:url value="/resources/img_hiragana/ryo.png"/>"
                                                alt="ryo">
                                        </li>

                                        <li class="module-modal sonant" data-id="92"><img src=" <c:url value="/resources/img_hiragana/gya.png"/>"
                                                alt="gya">
                                        </li>
                                        <li class="module-modal sonant" data-id="93"><img src=" <c:url value="/resources/img_hiragana/gyu.png"/>"
                                                alt="gyu">
                                        </li>
                                        <li class="module-modal sonant" data-id="94"><img src=" <c:url value="/resources/img_hiragana/gyo.png"/>"
                                                alt="gyo">
                                        </li>

                                        <li class="module-modal sonant" data-id="95"><img src=" <c:url value="/resources/img_hiragana/ja.png"/>"
                                                alt="ja">
                                        </li>
                                        <li class="module-modal sonant" data-id="96"><img src=" <c:url value="/resources/img_hiragana/ju.png"/>"
                                                alt="ju">
                                        </li>
                                        <li class="module-modal sonant" data-id="97"><img src=" <c:url value="/resources/img_hiragana/jo.png"/>"
                                                alt="jo">
                                        </li>

                                        <li class="module-modal sonant" data-id="98"><img src=" <c:url value="/resources/img_hiragana/bya.png"/>"
                                                alt="bya">
                                        </li>
                                        <li class="module-modal sonant" data-id="99"><img src=" <c:url value="/resources/img_hiragana/byu.png"/>"
                                                alt="byu">
                                        </li>
                                        <li class="module-modal sonant" data-id="100"><img src=" <c:url value="/resources/img_hiragana/byo.png"/>"
                                                alt="byo">
                                        </li>

                                        <li class="module-modal sonant" data-id="101"><img src=" <c:url value="/resources/img_hiragana/pya.png"/>"
                                                alt="pya">
                                        </li>
                                        <li class="module-modal sonant" data-id="102"><img src=" <c:url value="/resources/img_hiragana/pyu.png"/>"
                                                alt="pyu">
                                        </li>
                                        <li class="module-modal sonant" data-id="103"><img src=" <c:url value="/resources/img_hiragana/pyo.png"/>"
                                                alt="pyo">
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                       </div>
                       </div>
                        
                        <!-- <div class="more-block"> -->



            </section>
        </div>
    </div>