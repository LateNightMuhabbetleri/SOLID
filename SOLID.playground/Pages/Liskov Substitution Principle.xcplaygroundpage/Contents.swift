// -------------------------------------------------------------
// Liskov Substitution Principle
// https://en.wikipedia.org/wiki/Liskov_substitution_principle
// -------------------------------------------------------------

import Foundation

protocol BirdProtocol {
  func walk()
  func fly()
}

class Eagle: BirdProtocol {

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

  func fly() {
    fatalError("💥 Penguins can't fly! 💥")
  }
}

class Zoo {

  let birds: [BirdProtocol]
  
  init(birds: [BirdProtocol]) {
    self.birds = birds
  }

  func makeNoise() {
    for bird in birds {
      if let penguin = bird as? Penguin {
        penguin.walk()
      } else {
        bird.fly()
      }
    }
  }
}
