
var treasureLoc = Math.floor(Math.random() * 26)
var bombLoc = Math.floor(Math.random() * 26)
let numBombs = null
let numbTreasure = null

// start a loop that continues while you have number of bombs plus number of treasure
// before you push it into a treasure or bomb array ensure they are not equal


if (treasureLoc === bombLoc) {
  treasureLoc = Math.floor(Math.random() * 26)
  bombLoc = Math.floor(Math.random() * 26)
}

  function findTreasure(num) {
    if (treasureLoc === num) {
      document.getElementById(num).innerHTML = "$$$"
      // alert("you found treasure!  You win")
      setTimeout(function() { alert("you found the Treasure!  You win ")}, 10)

      // console.log("treasureLoc: " + treasureLoc)
    } else if (bombLoc === num) {
      document.getElementById(num).innerHTML = "&#x2620"
      setTimeout(function() { alert("You're Dead!")}, 10)
      // alert("you're dead")
    }

    else {
      document.getElementById(num).innerHTML = "&#x1f332"
    }
    console.log("treasureLoc: ", treasureLoc)
    console.log("bombLoc: ", bombLoc)
  }
