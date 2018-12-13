// -------------------------------------------------------------
// Single Responsibility Principle
// https://en.wikipedia.org/wiki/Single_responsibility_principle
// -------------------------------------------------------------

import Foundation

struct Developer {

  let name: String
  let salary: Decimal

  private let taxPercentage: Decimal

  func calculateTax() -> Decimal {
    return salary * taxPercentage
  }
}
