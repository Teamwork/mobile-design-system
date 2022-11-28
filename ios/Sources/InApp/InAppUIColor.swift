import Foundation
import UIKit

public extension UIColor {
    
    static let neutralWhite = UIColor(named: "ui-neutral-white", in: .module, compatibleWith: nil).unsafelyUnwrapped
    static let neutralLight = UIColor(named: "default-neutral-light", in: .module, compatibleWith: nil).unsafelyUnwrapped
    static let neutralDark = UIColor(named: "default-neutral-dark", in: .module, compatibleWith: nil).unsafelyUnwrapped
    static let neutralShadow = UIColor(named: "default-neutral-shadow", in: .module, compatibleWith: nil).unsafelyUnwrapped
}
