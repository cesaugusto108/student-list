"use strict";

const nameField = document.querySelectorAll(".student-name");
const emailField = document.querySelectorAll(".student-email");

nameField.forEach((f) => {
    let formattedText = "";
	const fieldText = f.innerText.toLowerCase();
	const splitFieldText = fieldText.split(" ");

	for (let i = 0; i < splitFieldText.length; i++) {
		splitFieldText[i] = splitFieldText[i][0].toUpperCase() + splitFieldText[i].substr(1);
        formattedText = splitFieldText.join(" ");
	}

	f.innerText = formattedText;
});

emailField.forEach((f) => {
    const fieldText = f.innerText.toLowerCase();

    f.innerText = fieldText;
});