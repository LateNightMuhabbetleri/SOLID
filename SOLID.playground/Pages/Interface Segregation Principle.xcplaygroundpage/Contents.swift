// -------------------------------------------------------------
// Interface Segregation Principle
// https://en.wikipedia.org/wiki/Interface_segregation_principle
// https://upload.wikimedia.org/wikipedia/commons/9/96/Dependency_inversion.png
// -------------------------------------------------------------

import Foundation

enum TemperatureUnit {
  case celsius
  case fahrenheit
}

enum SpeedUnit {
  case kilometers
  case miles
}

protocol UserSettingsProtocol: class {
  var temperatureUnit: TemperatureUnit { get set }
  var speedUnit: SpeedUnit { get set }
}

class TemperatureController {
  
  private let settings: UserSettingsProtocol
  
  init(settings: UserSettingsProtocol) {
    self.settings = settings
  }
  
  func toggle() {
    switch settings.temperatureUnit {
    case .celsius:
      settings.temperatureUnit = .fahrenheit
    case .fahrenheit:
      settings.temperatureUnit = .celsius
    }
  }
}
