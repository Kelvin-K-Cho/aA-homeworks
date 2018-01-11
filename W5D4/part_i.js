/*
function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}


'in block'
'in block'


function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}


'in block'
'out of block'


function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}


bricks


function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}


'in block'
'out of block'


function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}


bricks

*/

function madLib(verb, adj, noun) {
  console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`)
}

madLib('make', 'best', 'guac');

function isSubstring(searchString, subString) {
  if (searchString.includes(subString) === true) {
    return true;
  }
  return false;
}

console.log(isSubstring("time to program", "time"));
console.log(isSubstring("Jump for joy", "joys"));

function fizzBuzz(array) {
  let results = [];
  for (let i = 0; i < array.length; i++) {
    if (array[i] % 3 === 0 && array[i] % 5 === 0) {
      continue;
    } else if (array[i] % 3) {
      results.push(array[i]);
    } else if (array[i] % 5) {
      results.push(array[i]);
    } else {
      continue;
    }
  }
  return results;
}

function isPrime(number) {
  if (number < 2) {
    return false;
  }
  let i = 2;
  while (i < number) {
    if (number % i === 0) {
      return false;
    }
    i++;
  }
  return true;
}

console.log(isPrime(15485863));

function sumOfNPrimes(n) {
  let results = [];
  let i = 2;
  while (results.length < n) {
    if (isPrime(i) === true) {
      results.push(i);
    }
    i++;
  }
  return results.reduce(function(a,b){
    return a + b;
  }, 0);
}

console.log(sumOfNPrimes(4));
