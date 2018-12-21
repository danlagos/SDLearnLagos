//Create method that allows user input
// alert("What would you like to translate to pig Latin?")
// var userInput = prompt("Write your word here: ")
// alert(userInput)

//For words beginning with a vowel, add "way" to the end




// function arrayCreator(word1){
//   var wordArray = word.split("")
//   return wordArray
//   }
// console.log(arrayCreator(word));
//
//
// function findVowel(word1){
//   var vowelFilter = word.map()
// }

// function vowelFinder(input){
//   var findVowels = input.split("").filter(i => !input.includes([i]))
//   return findVowels
// }
// console.log(vowelFinder(word))

// Compare to const vowel
// If vowel push to pigLatinArr
// Create a variable (const) that identifies vowels
//
// Create a function that identifies where the vowel is located in the string
//
// Create a function that adds "way" to the end of string that starts with a vowel
//

// loop function that grabs all consonates before the first vowel, and stores them
// var word = "staple"
// //
// // function vowelDetector(val) {
// //   var wordArray = word.split("")
// //   var frontLetter = wordArray.shift()
// //   for (let i = 0; i < val.length; i++) {
// //     if(frontLetter !== vowels[i]) {
// //       return consRemover(val).join("") + "ay"
// //     }
// //   }
// // }
// // console.log(vowelDetector(word));
// //

const vowels = ["a", "e", "i", "o", "u"]

var word = "strong"

function consRemover(val) { // grabs consonants
  var emptyArr = [] // meant to hold consonants
  let i = 0 // index
    while (!vowels.includes(val[i])) { // keeps loop going until you hit a vowel
    emptyArr.push(val[i]) //  pushes consonates
    i++ // incriment index
  }
  var consonants = emptyArr.join('') // join consonates back into array
  return consonants // return consonants in function
}

// console.log(consRemover(word));

function remover(val){ // will take letters after consonants end
  var emptyArr = [] // will hold letters after the consonates
  // split string
  var split = val.split('')
  var valVowels = [] // new blank array for vowels
  // find the index of the first vowel
  for (let i = 0; i < split.length; i++){
    // check if the character is a vowel
    if(vowels.includes(split[i])) {
      valVowels.push(i)
    }
  }
  // return last half of the word (starting at vowel)

  return val.substring(valVowels[0])
}
  // console.log(remover(word));

  function vowelDetector(val, func, func2){ //  main function that runs first two rules in pig latin
  var wordArray = word.split("") // var that will be used to help determine if first letter is consonants or vowel
  var frontLetter = wordArray.shift()
  var secondLetter = wordArray[0]
  // console.log(secondLetter); this was a check to see if second letter worked
    for(i = 0; val.length; i++ )
      // this if statement handles words starting with vowels
      if(frontLetter === val[i]){
        return word +"-"+ "way"
      } else if (frontLetter !== val[i]) { // this statement handles words starting with consonants
        // conMover(word, vowels)
        return func2 + "-" +func+"ay"
      }
    }
  console.log(vowelDetector(vowels, consRemover(word), remover(word)))
