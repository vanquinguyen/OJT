function check(){
    var c=0;
    var q1=document.quiz.question1.value;
    var q2=document.quiz.question2.value;
    var q3=document.quiz.question3.value;
    var q4=document.quiz.question4.value;
    var q5=document.quiz.question5.value;
    var q6=document.quiz.question1.value;
    var q7=document.quiz.question2.value;
    var q8=document.quiz.question3.value;
    var q9=document.quiz.question4.value;
    var q10=document.quiz.question5.value;
    var q11=document.quiz.question1.value;
    var q12=document.quiz.question2.value;
    var q13=document.quiz.question3.value;
    var q14=document.quiz.question4.value;
    var q15=document.quiz.question5.value;
    var q16=document.quiz.question1.value;
    var q17=document.quiz.question2.value;
    var q18=document.quiz.question3.value;
    var q19=document.quiz.question4.value;
    var q20=document.quiz.question5.value;
    var q21=document.quiz.question1.value;
    var q22=document.quiz.question2.value;
    var q23=document.quiz.question3.value;
    var q24=document.quiz.question4.value;
    var q25=document.quiz.question5.value;
    var q26=document.quiz.question1.value;
    var q27=document.quiz.question2.value;
    var q28=document.quiz.question3.value;
    var q29=document.quiz.question4.value;
    var q30=document.quiz.question5.value;
    var result= document.getElementById('result');
    var quiz= document.getElementById('quiz');
    if(q1=="せんせい"){c++}
    if(q2=="やすみ"){c++}
    if(q3=="にせんきゅうひゃ"){c++}
    if(q4=="おかね"){c++}
    if(q5=="まいにち"){c++}
    if(q6=="みぎ"){c++}
    if(q7=="じかん"){c++}
    if(q8=="でんしゃ"){c++}
    if(q9=="やすい"){c++}
    if(q10=="うまれました"){c++}
    if(q11=="ともだち"){c++}
    if(q12=="きいて"){c++}
    if(q13=="おんなのこ"){c++}
    if(q14=="すいようび"){c++}
    if(q15=="ながい"){c++}
    if(q16=="ひと"){c++}
    if(q17=="よねんまえ"){c++}
    if(q18=="みみ"){c++}
    if(q19=="山"){c++}
    if(q20=="北"){c++}
    if(q21=="五万円"){c++}
    if(q22=="シャワー"){c++}
    if(q23=="足"){c++}
    if(q24=="見ました"){c++}
    if(q25=="店"){c++}
    if(q26=="レストラン"){c++}
    if(q27=="道"){c++}
    if(q28=="入らない"){c++}
    if(q29=="エレベーター"){c++}
    if(q30=="買ってきた"){c++}
    
    quiz.style.display="none";
    if (c<=20) {
        result.textContent=`Kết quả bài làm đúng ${c}/30 câu.`
    } else {
        result.textContent=`Kết quả bài làm đúng ${c}/30 câu.`
    }
}
