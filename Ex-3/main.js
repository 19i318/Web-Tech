// Curried function
function calculateVolume(length) {
    return function (breadth) {
        return function (height) {
            return length * breadth * height;
        }
    }
}

//Conditional operator
function isOldEnough(age) {
    return age > 18 ? "Yes" : "No"
}

function setTimer(){
    setTimeout(function() {
        alert("Five seconds over!")
    })
}