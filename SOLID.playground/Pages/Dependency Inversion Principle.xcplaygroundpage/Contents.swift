// -------------------------------------------------------------
// Dependency Inversion Principle
// https://en.wikipedia.org/wiki/Dependency_inversion_principle
// -------------------------------------------------------------

import UIKit

class CarViewModel {
  let make: String = "Porsche"
  let model: String = "911"
}

class CarViewController: UIViewController {
  
  var viewModel: CarViewModel!
  
  @IBOutlet private var makeLabel: UILabel!
  @IBOutlet private var modelLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    makeLabel.text = viewModel.make
    modelLabel.text = viewModel.model
  }
}
