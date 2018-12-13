// -------------------------------------------------------------
// Dependency Inversion Principle
// https://en.wikipedia.org/wiki/Dependency_inversion_principle
// https://upload.wikimedia.org/wikipedia/commons/9/96/Dependency_inversion.png
// -------------------------------------------------------------

import UIKit

protocol CarViewModelProtocol {
  var make: String { get }
  var model: String { get }
}

class PorscheViewModel: CarViewModelProtocol {
  let make: String = "Porsche"
  let model: String = "911"
}

class OpelViewModel: CarViewModelProtocol {
  let make: String = "Opel"
  let model: String = "Astra"
}

class CarViewController: UIViewController {
  
  var viewModel: CarViewModelProtocol!
  
  @IBOutlet private var makeLabel: UILabel!
  @IBOutlet private var modelLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    makeLabel.text = viewModel.make
    modelLabel.text = viewModel.model
  }
}
