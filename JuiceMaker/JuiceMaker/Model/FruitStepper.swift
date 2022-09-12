import UIKit

final class FruitStepper: UIStepper {
    var fruit: Fruit? {
        guard let identifier = self.restorationIdentifier?.replacingOccurrences(of: "Stepper", with: "") else {
            return nil
        }
        return Fruit.init(rawValue: identifier)
    }
}
