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
        public let feedbackAccent: DynamicColor
        public let feedbackError: DynamicColor
        public let feedbackWarning: DynamicColor
        public let feedbackSuccess: DynamicColor
    }
}
