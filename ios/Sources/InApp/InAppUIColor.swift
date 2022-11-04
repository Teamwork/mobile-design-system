import Foundation
import UIKit

public extension UIColor {
    
    struct DynamicUIColor: Hashable {
        
        public let base: UIColor
        public let child10: UIColor
        public let child20: UIColor
        public let child40: UIColor
        public let child50: UIColor
    }
        
    // MARK: - Feedback
    
    static let errorPrimary = UIColor(named: "errorPrimary", in: .module, compatibleWith: nil).unsafelyUnwrapped
    static let interactionPrimary = UIColor(named: "interactionPrimary", in: .module, compatibleWith: nil).unsafelyUnwrapped
    static let interactionPrimaryHighlight = UIColor(named: "interactionPrimaryHighlight", in: .module, compatibleWith: nil).unsafelyUnwrapped
    static let interactionSecondary = UIColor(named: "interactionSecondary", in: .module, compatibleWith: nil).unsafelyUnwrapped
    
    // MARK: - Neutral
    static let neutralBlack = UIColor(named: "ui-neutral-black", in: .module, compatibleWith: nil).unsafelyUnwrapped
    static let neutralWhite = UIColor(named: "ui-neutral-white", in: .module, compatibleWith: nil).unsafelyUnwrapped
    static let neutralLight = UIColor(named: "default-neutral-light", in: .module, compatibleWith: nil).unsafelyUnwrapped
    static let neutralDark = UIColor(named: "default-neutral-dark", in: .module, compatibleWith: nil).unsafelyUnwrapped
    static let neutralShadow = UIColor(named: "default-neutral-shadow", in: .module, compatibleWith: nil).unsafelyUnwrapped
}
