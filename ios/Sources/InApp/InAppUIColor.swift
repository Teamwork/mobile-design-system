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
        
        public struct NeutralUIColor: Hashable {
            
            public let base: UIColor
            public let child10: UIColor
            public let child20: UIColor
            public let child40: UIColor
            public let child50: UIColor
            public let child60: UIColor
            public let black: UIColor
            public let white: UIColor
        }
        
        // MARK: - Feedback
        
        public static let errorPrimary = UIColor(named: "errorPrimary", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let interactionPrimary = UIColor(named: "interactionPrimary", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let interactionPrimaryHighlight = UIColor(named: "interactionPrimaryHighlight", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let interactionSecondary = UIColor(named: "interactionSecondary", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        
        // MARK: - Fill

        public static let secondarySystemFill = UIColor.secondarySystemFill
        public static let tertiarySystemFill = UIColor.tertiarySystemFill
        public static let quaternarySystemFill = UIColor.quaternarySystemFill
        
        // MARK: - System Background
        
        public static let systemBackground = UIColor.systemBackground
        public static let secondarySystemBackground = UIColor.secondarySystemBackground
        
        // MARK: - Label
        
        public static let label = UIColor.label
        public static let secondaryLabel = UIColor.secondaryLabel
        public static let tertiaryLabel = UIColor.tertiaryLabel
    }
}
