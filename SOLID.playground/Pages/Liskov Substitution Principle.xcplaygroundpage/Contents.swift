// -------------------------------------------------------------
// Liskov Substitution Principle
// https://en.wikipedia.org/wiki/Liskov_substitution_principle
// -------------------------------------------------------------

import Foundation

protocol BirdProtocol {
  func walk()
}

protocol FlyingProtocol {
  func fly()
}

protocol FlyingBirdProtocol: BirdProtocol, FlyingProtocol { }

class Eagle: FlyingBirdProtocol {

  func walk() {
    print("Eagle is walking.")
  }

  func fly() {
    print("Eagle is flying.")
  }
}

class Penguin: BirdProtocol {

  func walk() {
    print("Penguin is walking.")
  }
}

class Zoo {

  let birds: [FlyingBirdProtocol]
  
  init(birds: [FlyingBirdProtocol]) {
    self.birds = birds
  }

  func makeNoise() {
    for bird in birds {
      bird.fly()
    }
  }
}
