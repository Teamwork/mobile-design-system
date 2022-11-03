import Foundation
import UIKit

public extension UIColor {
    
    enum teamwork {
        
        public struct DynamicUIColor: Hashable {
            
            public let base: UIColor
            public let child10: UIColor
            public let child20: UIColor
            public let child40: UIColor
            public let child50: UIColor
        }
        
        public static let separator = UIColor.separator

        // MARK: - Feedback
        
        public static let errorPrimary = UIColor(named: "errorPrimary", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let interactionPrimary = UIColor(named: "interactionPrimary", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let interactionPrimaryHighlight = UIColor(named: "interactionPrimaryHighlight", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let interactionSecondary = UIColor(named: "interactionSecondary", in: bundle, compatibleWith: nil).unsafelyUnwrapped

        // MARK: - Neutral
        public static let neutralBlack = UIColor(named: "ui-neutral-black", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let neutralWhite = UIColor(named: "ui-neutral-white", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let neutralLight = UIColor(named: "default-neutral-light", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let neutralDark = UIColor(named: "default-neutral-dark", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let neutralShadow = UIColor(named: "default-neutral-shadow", in: bundle, compatibleWith: nil).unsafelyUnwrapped
    }
}
