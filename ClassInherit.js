// Story: As a programmer, I can make a car.
// Hint: Create a class called Car, and create a variable called myCar which contains an object of class Car.

class Car {
  constructor() { // sets attributes to a generic car.
    this.wheels = 4
    this.modYear = 2018
    this.lights = "off"
    this.turnSignal = "off"
    this.speed = 0
  }

  lightSwitch() { // creates the light switch, defaults off.
    if (this.lights === "off") {
      this.lights = "on"
    } else {this.lights = "off"}
  }

  useTurnSignal(newSig) { // turn signal with three settings.  "right", "left", "off"
    switch (newSig) {
      case "right":
        this.turnSignal = "right"
        break
      case "left":
        this.turnSignal = "left"
        break
      default: this.turnSignal = "off"
    }
  }
  speedUp(num) { // accelerates the car
    this.speed += num
  }
  brakes(num) { //decelerates the car
    this.speed -= num
  }
  carInfo() {
    // 2018 4 wheeled car with the lights off and the turn signal off running at 0 kph
    return `${this.modYear} car with ${this.wheels} wheels with the lights ${this.lights} and the turn signal ${this.turnSignal} running at ${this.speed} kph`
  }

}

class MyCar extends Car {

}

class Tesla extends Car {
  carInfo() { // chages the language in carInfo and switching the word "car" with "tesla"
    return super.carInfo().replace('car', 'Tesla')
  }
}

class Tata extends Car {

}

class Toyota extends Car {

}

// let myCar = new MyCar()
// let myTesla = new Tesla()
// let myTata = new Tata()
// let myToyota = new Toyota()

// I need to change the model years

let my1stCar = new MyCar()
let my2ndCar = new MyCar()

var allCars = [my1stCar, my2ndCar]

let my1stTesla = new Tesla()
let my2ndTesla = new Tesla()

var allTeslas = [my1stTesla, my2ndTesla]

let my1stTata = new Tata()
let my2ndTata = new Tata()

var allTatas = [my1stTata, my2ndTata]

let my1stToyota = new Toyota()
let my2ndToyota = new Toyota()

var allToyotas = [my1stToyota, my2ndToyota]

// console.log(myCar);
// myCar.lightSwitch()
// console.log(myCar);
// myCar.lightSwitch()
// console.log(myCar);
// myCar.speedUp(3)
// myCar.useTurnSignal("right")
// console.log(myCar)
// myCar.useTurnSignal("left")
// console.log(myCar)
// myCar.useTurnSignal("test")
// console.log(myCar)
// console.log(myCar);
// myCar.brakes(3)
// console.log(myCar);
// console.log(myCar.carInfo());
// myTesla.speedUp(10);
// console.log(myTesla.carInfo())
// console.log(myCar);
// console.log(myTesla);
// console.log(myTata);
// console.log(myToyota);
