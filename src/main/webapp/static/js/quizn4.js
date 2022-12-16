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
    if(q1=="đúng"){c++}
    if(q2=="đúng"){c++}
    if(q3=="đúng"){c++}
    if(q4=="đúng"){c++}
    if(q5=="đúng"){c++}
    if(q6=="đúng"){c++}
    if(q7=="đúng"){c++}
    if(q8=="đúng"){c++}
    if(q9=="đúng"){c++}
    if(q10=="đúng"){c++}
    if(q11=="đúng"){c++}
    if(q12=="đúng"){c++}
    if(q13=="đúng"){c++}
    if(q14=="đúng"){c++}
    if(q15=="đúng"){c++}
    if(q16=="đúng"){c++}
    if(q17=="đúng"){c++}
    if(q18=="đúng"){c++}
    if(q19=="đúng"){c++}
    if(q20=="đúng"){c++}
    if(q21=="đúng"){c++}
    if(q22=="đúng"){c++}
    if(q23=="đúng"){c++}
    if(q24=="đúng"){c++}
    if(q25=="đúng"){c++}
    if(q26=="đúng"){c++}
    if(q27=="đúng"){c++}
    if(q28=="đúng"){c++}
    if(q29=="đúng"){c++}
    if(q30=="đúng"){c++}
    
    quiz.style.display="none";
    if (c<=20) {
        result.textContent=`Kết quả bài làm đúng ${c}/30 câu.`
    } else {
        result.textContent=`Kết quả bài làm đúng ${c}/30 câu.`
    }
}
