"use strict";

const formElements = {
	studentName: document.getElementById("floatingName"),
	telephone: document.getElementById("floatingPhone"),
	studentId: document.getElementById("floatingId"),
	registration: document.getElementById("floatingRegistration"),
};

// adds Bootstrap class to change input color to red
function addIsInvalidClass(element) {
	element.classList.add("is-invalid");
}

// writes warning message which asks to provide missing info
function writeWarning(message, element) {
	const label = element.id + "Label";

	document.getElementById(label).innerText = message;
	document.getElementById(label).classList.add("text-danger");
	document.getElementById(label).classList.remove("text-dark");
}

// checks whether it's a valid number
function checkNumber(element) {
	const number = Number(element.value);

	return isNaN(number) || element.value.includes("." || ",");
}

// checks each input
function warnUser(element, warning) {
	if (element.value === "") {
		addIsInvalidClass(element);
		writeWarning(warning, element);
	}
}

// checks whether inputs are empty
function checkInputs() {
	if (
		formElements.studentName.value === "" ||
		formElements.telephone.value === "" ||
		formElements.studentId.value === "" ||
		formElements.registration.value === ""
	) {
		warnUser(formElements.studentName, "Please provide a name here");
		warnUser(formElements.telephone, "Please provide a valid phone number");
		warnUser(formElements.studentId, "Please provide a valid id");
		warnUser(formElements.registration, "Please provide a valid registration number");
	} else {
		document.getElementById("add-form").submit();
	}
}

// validates form
function validate() {
	const a = checkNumber(formElements.telephone) ? writeWarning("Only numbers are allowed here", formElements.telephone) : "1";
	const b = checkNumber(formElements.studentId) ? writeWarning("Only numbers are allowed here", formElements.studentId) : "1";
	const c = checkNumber(formElements.registration) ? writeWarning("Only numbers are allowed here", formElements.registration) : "1";

	if (a + b + c === "111") {
		checkInputs();
	}
}

// removes warnings when user clicks on input
const removeWarnings = (e) => {
	const label = e.target.id + "Label";

	document.getElementById(label).innerText = e.target.placeholder;
	document.getElementById(label).classList.add("text-dark");
	e.target.classList.remove("is-invalid");
};

// inputs event listeners
formElements.studentName.addEventListener("click", removeWarnings);
formElements.telephone.addEventListener("click", removeWarnings);
formElements.studentId.addEventListener("click", removeWarnings);
formElements.registration.addEventListener("click", removeWarnings);
