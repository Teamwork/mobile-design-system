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
        
        public static let purple = DynamicUIColor(
            base: .palettePurple30,
            child10: .palettePurple10,
            child20: .palettePurple20,
            child40: .palettePurple40,
            child50: .palettePurple50
        )
        
        public static let indigo = DynamicUIColor(
            base: .paletteIndigo30,
            child10: .paletteIndigo10,
            child20: .paletteIndigo20,
            child40: .paletteIndigo40,
            child50: .paletteIndigo50
        )
        
        public static let blue = DynamicUIColor(
            base: .paletteBlue30,
            child10: .paletteBlue10,
            child20: .paletteBlue20,
            child40: .paletteBlue40,
            child50: .paletteBlue50
        )
        
        public static let teal = DynamicUIColor(
            base: .paletteTeal30,
            child10: .paletteTeal10,
            child20: .paletteTeal20,
            child40: .paletteTeal40,
            child50: .paletteTeal50
        )
        
        public static let green = DynamicUIColor(
            base: .paletteGreen30,
            child10: .paletteGreen10,
            child20: .paletteGreen20,
            child40: .paletteGreen40,
            child50: .paletteGreen50
        )
        
        public static let yellow = DynamicUIColor(
            base: .paletteYellow30,
            child10: .paletteYellow10,
            child20: .paletteYellow20,
            child40: .paletteYellow40,
            child50: .paletteYellow50
        )
        
        public static let orange = DynamicUIColor(
            base: paletteOrange30,
            child10: .paletteOrange10,
            child20: .paletteOrange20,
            child40: .paletteOrange40,
            child50: .paletteOrange50
        )

        public static let pink = DynamicUIColor(
            base: palettePink30,
            child10: .palettePink10,
            child20: .palettePink20,
            child40: .palettePink40,
            child50: .palettePink50
        )
        
        public static let brown = DynamicUIColor(
            base: paletteBrown30,
            child10: .paletteBrown10,
            child20: .paletteBrown20,
            child40: .paletteBrown40,
            child50: .paletteBrown50
        )
        
        public static let red = DynamicUIColor(
            base: paletteRed30,
            child10: .paletteRed10,
            child20: .paletteRed20,
            child40: .paletteRed40,
            child50: .paletteRed40
        )
        
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
