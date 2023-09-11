$.validator.addMethod("alphaOnly", function(value, element) {
	return this.optional(element) || /^[a-zA-Z\s]*$/.test(value);
});
$(document).ready(function() {
	$('#myform').validate({
		rules: {
			firstName: {
				required: true,
				alphaOnly: true
			},
			lastName: {
				required: true,
				alphaOnly: true
			},
			birthDate: {
				required: true
			},
			mobileNo: {
				required: true
			},
			addressOne: {
				required: true
			},
			gender: {
				required: true
			},
			email: {
				required: true
			},
			age: {
			required: true
			},
		},
		messages: {
			firstName: {
				required: "This Field Is Mandatory",
				alphaOnly: "**Enter Alphabetic Values"
			},
			lastName: {
				required: "**This Field Is Mandatory",
				alphaOnly: "**Enter Alphabetic Values"
			},
			birthDate: {
				required: "**This Field Is Mandatory"
			},
			mobileNo: {
				required: "**This Field Is Mandatory"
			},
			addressOne: {
				required: "**This Field Is Mandatory"
			},
			age: {
			required: "**This Field Is Mandatory"
			},
			email: {
				required: "**Enter Valid Email"
			}
		}
	});
});
$(document).ready(function() {
	const today = new Date().toISOString().split('T')[0];
	document.getElementById('birthDate').setAttribute('max', today);
});
