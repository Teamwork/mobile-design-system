import UIKit

public extension Theme {

    struct DynamicFont: Hashable {

        let base: UIFont

        public var regular: UIFont { base.withWeight(.regular) }
        public var medium: UIFont { base.withWeight(.medium) }
        public var semibold: UIFont { base.withWeight(.semibold) }
        public var bold: UIFont { base.withWeight(.bold) }

        public var monospaced: UIFont {

            guard let descriptor = base.fontDescriptor.withSymbolicTraits(.traitMonoSpace) else { return base }
            return UIFont(descriptor: descriptor, size: base.pointSize)
        }
    }

    struct Fonts: Hashable {

        public let header01: DynamicFont
        public let header02: DynamicFont
        public let header03: DynamicFont
        public let header04: DynamicFont
        public let header05: DynamicFont
        public let header06: DynamicFont

        public let body01: DynamicFont
        public let body02: DynamicFont

        public let buttonSmall: DynamicFont
        public let buttonLarge: DynamicFont

        public let subtitle: DynamicFont
        public let caption: DynamicFont
    }
}

private extension UIFont {

    func withWeight(_ weight: UIFont.Weight) -> UIFont {

        let descriptor = fontDescriptor.addingAttributes(
            [
                .traits: [
                    UIFontDescriptor.TraitKey.weight: weight
                ]
            ]
        )

        return UIFont(descriptor: descriptor, size: pointSize)
    }
}

public extension UIFont {

    static func preferredFont(forTextStyle style: TextStyle, weight: Weight, italic: Bool = false) -> UIFont {

        // Get the style's default pointSize
        let traits = UITraitCollection(preferredContentSizeCategory: .large)
        let desc = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style, compatibleWith: traits)

        // Get the font at the default size and preferred weight
        var font = UIFont.systemFont(ofSize: desc.pointSize, weight: weight)
        if italic == true {
            font = font.with([.traitItalic])
        }

        // Setup the font to be auto-scalable
        let metrics = UIFontMetrics(forTextStyle: style)
        return metrics.scaledFont(for: font)
    }

    private func with(_ traits: UIFontDescriptor.SymbolicTraits...) -> UIFont {
        guard let descriptor = fontDescriptor.withSymbolicTraits(UIFontDescriptor.SymbolicTraits(traits).union(fontDescriptor.symbolicTraits)) else {
            return self
        }
        return UIFont(descriptor: descriptor, size: 0)
    }
}
