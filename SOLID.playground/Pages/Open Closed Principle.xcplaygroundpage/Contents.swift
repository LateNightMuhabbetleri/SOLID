// -------------------------------------------------------------
// Open and Closed Principle
// https://en.wikipedia.org/wiki/Open%E2%80%93closed_principle
// -------------------------------------------------------------

import Foundation

protocol PaymentManagerProtocol {
  func payAmount(_ amount: Decimal, method: PaymentMethodProtocol)
}

protocol PaymentMethodProtocol {
  func payAmount(_ amount: Decimal)
}

class VisaPaymentMethod: PaymentMethodProtocol {
  func payAmount(_ amount: Decimal) {
    // ...
  }
}

class MastercardPaymentMethod: PaymentMethodProtocol {
  func payAmount(_ amount: Decimal) {
    // ...
  }
}
