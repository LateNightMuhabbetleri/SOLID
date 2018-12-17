// -------------------------------------------------------------
// Interface Segregation Principle
// https://en.wikipedia.org/wiki/Interface_segregation_principle
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

protocol SpeedSettingsProtocol: class {
  var speedUnit: SpeedUnit { get set }
}

protocol TemperatureSettingsProtocol: class {
  var temperatureUnit: TemperatureUnit { get set }
}

class TemperatureController {
  
  private let settings: TemperatureSettingsProtocol
  
  init(settings: TemperatureSettingsProtocol) {
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
