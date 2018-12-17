// -------------------------------------------------------------
// Single Responsibility Principle
// https://en.wikipedia.org/wiki/Single_responsibility_principle
// -------------------------------------------------------------

import Foundation

struct Developer {
  let name: String
  let salary: Decimal
}

class TaxCalculator {
  
  private let taxPercentage: Decimal
  
  init(taxPercentage: Decimal) {
    self.taxPercentage = taxPercentage
  }
  
  func calculateTax(forSalary salary: Decimal) -> Decimal {
    return salary * taxPercentage
  }
}
