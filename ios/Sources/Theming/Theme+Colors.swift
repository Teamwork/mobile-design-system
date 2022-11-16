import UIKit

public extension Theme {

    struct DynamicColor: Hashable {

        public let base: UIColor
        public let child20: UIColor
        public let child40: UIColor
        public let child60: UIColor
        public let child80: UIColor
        public let child100: UIColor
    }

    struct Colors: Hashable {

        public let brandPrimary02: DynamicColor

        public let brandSecondary01: DynamicColor
        public let brandSecondary02: DynamicColor
        public let brandSecondary03: DynamicColor
        public let brandSecondary04: DynamicColor
        public let brandSecondary05: DynamicColor
        public let brandSecondary06: DynamicColor
        public let brandSecondary07: DynamicColor
        public let brandSecondary08: DynamicColor
    }
}
