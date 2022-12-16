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
    if(q1=="は"){c++}
    if(q2=="だれ"){c++}
    if(q3=="おいしくて"){c++}
    if(q4=="きれいで"){c++}
    if(q5=="が あります"){c++}
    if(q6=="食べないで"){c++}
    if(q7=="は"){c++}
    if(q8=="で"){c++}
    if(q9=="も"){c++}
    if(q10=="食べ"){c++}
    if(q11=="行く"){c++}
    if(q12=="ねた"){c++}
    if(q13=="買う"){c++}
    if(q14=="へ"){c++}
    if(q15=="はやく"){c++}
    if(q16=="で"){c++}
    if(q17=="と"){c++}
    if(q18=="あかるく"){c++}
    if(q19=="ごろ"){c++}
    if(q20=="どのぐらい"){c++}
    if(q21=="あります"){c++}
    if(q22=="しか"){c++}
    if(q23=="かえらないで"){c++}
    if(q24=="大きく"){c++}
    if(q25=="三つ"){c++}
    if(q26=="入って"){c++}
    if(q27=="に"){c++}
    if(q28=="ハンサムな"){c++}
    if(q29=="したり"){c++}
    if(q30=="きれいでは"){c++}
    
    quiz.style.display="none";
    if (c<=20) {
        result.textContent=`Kết quả bài làm đúng ${c}/30 câu.`
    } else {
        result.textContent=`Kết quả bài làm đúng ${c}/30 câu.`
    }
}