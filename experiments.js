// spread operator.

function sum(x, y, z) {
  return x + y + z
}

const numbers = [1, 2, 3]

console.log(sum(...numbers));
//  without the spread operator you would get an error when you log this.  It would try to put the entire array into one argument of the function.  In this case it would try to place it into the "x" arguement.  by usingthe spread operator, you have taken each index of the numbers array and "spread" them out into the x, y, z arguments of the sum function.

// for…of iterator
//
// includes()
//
// some()
