
function winingNum(){
  return Math.floor((Math.random() * 100) + 1)
}
var winningNum = Math.floor((Math.random() * 100) + 1)

console.log("winning number is: "+ winningNum);
// console.log(winningNum);
// console.log(winningNum);
// console.log(winningNum);

// you will require an input function.  Bypassing step for now

// decision making requires loop with three outcomes.
// win = number guessed correctly.  need win message
// number too low = tell user to guess higher.
// number too high = tell user to guess lower.
// compare input to winningNum

function gameDecisions(winNumObj, userInputObj) {
  let conditionalVariable = userInputObj === winNumObj ? "You win!" : userInputObj < winNumObj ? "Guess higher" : "Guess Lower";
  return conditionalVariable
}
console.log(gameDecisions(winningNum, 50));

// function blah(blahObj) {
//   var newArr = []
//   var blahObjArr = blahObj.split('')
//   for (let i = 0; i < blahObjArr.length; i++) {
//     if (i % 3 === 0) {
//       newArr.push("B")
//     } else if (i % 3 === 1) {
//       newArr.push("L")
//     } else { newArr.push("A") }
//   } return newArr.join('')
// }
//
// console.log(blah("words "));
