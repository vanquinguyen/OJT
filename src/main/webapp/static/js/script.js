//back to up
$(document).ready(function ($) {
	$(".top_btn").click(function () {
		$("body,html").animate(
			{
				scrollTop: 0,
			},
			2000
		);
	});
});

function show_iframe1(type) {
	document.getElementById(type).style.display = "block";

	switch (type) {
		case "n5_col1":
			document.getElementById("n5_col2").style.display = "none";
			document.getElementById("n5_col3").style.display = "none";
			break;
		case "n5_col2":
			document.getElementById("n5_col1").style.display = "none";
			document.getElementById("n5_col3").style.display = "none";
			break;
		case "n5_col3":
			document.getElementById("n5_col1").style.display = "none";
			document.getElementById("n5_col2").style.display = "none";
			break;
	}
}
function show_iframe2(type) {
	document.getElementById(type).style.display = "block";

	switch (type) {
		case "n4_col1":
			document.getElementById("n4_col2").style.display = "none";
			document.getElementById("n4_col3").style.display = "none";
			break;
		case "n4_col2":
			document.getElementById("n4_col1").style.display = "none";
			document.getElementById("n4_col3").style.display = "none";
			break;
		case "n4_col3":
			document.getElementById("n4_col1").style.display = "none";
			document.getElementById("n4_col2").style.display = "none";
			break;
	}
}
function show_iframe3(type) {
	document.getElementById(type).style.display = "block";

	switch (type) {
		case "n3_col1":
			document.getElementById("n3_col2").style.display = "none";
			document.getElementById("n3_col3").style.display = "none";
			break;
		case "n3_col2":
			document.getElementById("n3_col1").style.display = "none";
			document.getElementById("n3_col3").style.display = "none";
			break;
		case "n3_col3":
			document.getElementById("n3_col1").style.display = "none";
			document.getElementById("n3_col2").style.display = "none";
			break;
	}
}
function show_iframe4(type) {
	document.getElementById(type).style.display = "block";

	switch (type) {
		case "n2_col1":
			document.getElementById("n2_col2").style.display = "none";
			document.getElementById("n2_col3").style.display = "none";
			break;
		case "n2_col2":
			document.getElementById("n2_col1").style.display = "none";
			document.getElementById("n2_col3").style.display = "none";
			break;
		case "n2_col3":
			document.getElementById("n2_col1").style.display = "none";
			document.getElementById("n2_col2").style.display = "none";
			break;
	}
}
function show_iframe5(type) {
	document.getElementById(type).style.display = "block";

	switch (type) {
		case "n1_col1":
			document.getElementById("n1_col2").style.display = "none";
			document.getElementById("n1_col3").style.display = "none";
			break;
		case "n1_col2":
			document.getElementById("n1_col1").style.display = "none";
			document.getElementById("n1_col3").style.display = "none";
			break;
		case "n1_col3":
			document.getElementById("n1_col1").style.display = "none";
			document.getElementById("n1_col2").style.display = "none";
			break;
	}
}
function show_iframe6(type) {
	document.getElementById(type).style.display = "block";

	switch (type) {
		case "e_col1":
			document.getElementById("e_col2").style.display = "none";
			document.getElementById("e_col3").style.display = "none";
			break;
		case "e_col2":
			document.getElementById("e_col1").style.display = "none";
			document.getElementById("e_col3").style.display = "none";
			break;
		case "e_col3":
			document.getElementById("e_col1").style.display = "none";
			document.getElementById("e_col2").style.display = "none";
			break;
	}
}

// counter
$(document).ready(function () {
	var a = 0;
	$(window).scroll(function () {
		var oTop = $(".counter").offset().top - window.innerHeight;
		if (a == 0 && $(window).scrollTop() > oTop) {
			$(".counter-value").each(function () {
				var $this = $(this),
					countTo = $this.attr("data-count");
				$({
					countNum: $this.text(),
				}).animate(
					{
						countNum: countTo,
					},
					{
						duration: 2000,
						easing: "swing",
						step: function () {
							$this.text(Math.floor(this.countNum));
						},
						complete: function () {
							$this.text(this.countNum);
						},
					}
				);
			});
			a = 1;
		}
	});
});
// iframe khoahoc
function load_iframe() {
	document.getElementById("course_ifr").style.display = "block";
}
//change content course
function change_content(type, element) {
	let tabs = document.getElementsByClassName("tab");
	for (i = 0; i < tabs.length; i++) {
		tabs[i].style.background = "#d2e5b2";
		tabs[i].style.color = "#666";
	}
	element.style.background = "#588d3f";
	element.style.color = "#ffff";

	switch (type) {
		case "course_price-container":
			document.getElementById("course_price-container").style.display =
				"block";
			document.getElementById("preview-course-container").style.display =
				"none";
			break;
		case "preview-course-container":
			document.getElementById("preview-course-container").style.display =
				"flex";
			document.getElementById("course_price-container").style.display =
				"none";
			break;
	}
}
// form đăng nhập đăng kí
function change_form(img, form, e) {
	let t = document.getElementsByClassName("tab_form");
	for (i = 0; i < t.length; i++) {
		t[i].style.background = "#ffff";
		t[i].style.color = "#636d77";
	}
	e.style.color = "#ffff";
	e.style.background = "#588d3f";
	switch (form) {
		case "login_form":
			document.getElementById("login_form").style.display = "block";
			document.getElementById("register_form").style.display = "none";
			break;
		case "register_form":
			document.getElementById("register_form").style.display = "block";
			document.getElementById("login_form").style.display = "none";
			break;
	}
	switch (img) {
		case "img_login":
			document.getElementById("img_login").style.display = "block";
			document.getElementById("img_register").style.display = "none";
			break;
		case "img_register":
			document.getElementById("img_login").style.display = "none";
			document.getElementById("img_register").style.display = "block";
			break;
	}
}

// Get the modal

function get_modal() {
	document.getElementById("modal_form").style.display = "block";
	document.getElementById("tab_form2").click();
}
function get_modal2() {
	document.getElementById("modal_form").style.display = "block";
	document.getElementById("tab_form1").click();
}
function close_modal() {
	document.getElementById("modal_form").style.display = "none";
}
// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
	if (event.target == document.getElementById("modal_form")) {
		document.getElementById("modal_form").style.display = "none";
	}
};
