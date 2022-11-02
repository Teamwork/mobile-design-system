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

        public static let secondarySystemFill = UIColor(named: "secondarySystemFill", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let tertiarySystemFill = UIColor(named: "tertiarySystemFill", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let quaternarySystemFill = UIColor(named: "quaternarySystemFill", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        
        // MARK: - System Background
        
        public static let systemBackground = UIColor(named: "systemBackground", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let secondarySystemBackground = UIColor(named: "secondarySystemBackground", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        
        // MARK: - Label
        
        public static let label = UIColor(named: "label", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let secondaryLabel = UIColor(named: "secondaryLabel", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        public static let tertiaryLabel = UIColor(named: "tertiaryLabel", in: bundle, compatibleWith: nil).unsafelyUnwrapped
        
        public static let neutral = NeutralUIColor(
            base: .paletteNeutral30,
            child10: .paletteNeutral10,
            child20: .paletteNeutral20,
            child40: .paletteNeutral40,
            child50: .paletteNeutral50,
            child60: .paletteNeutral60,
            black: UIColor(named: "ui-neutral-black", in: bundle, compatibleWith: nil)!,
            white: UIColor(named: "ui-neutral-white", in: bundle, compatibleWith: nil)!
        )
    }
}
