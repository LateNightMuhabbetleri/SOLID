// -------------------------------------------------------------
// Open and Closed Principle
// https://en.wikipedia.org/wiki/Open%E2%80%93closed_principle
// -------------------------------------------------------------

import Foundation

protocol PaymentManagerProtocol {
  func makeVisaPayment(_ amount: Decimal)
  func makeMastercardPayment(_ amount: Decimal)
  func makeAppleWalletPayment(_ amount: Decimal)
}
