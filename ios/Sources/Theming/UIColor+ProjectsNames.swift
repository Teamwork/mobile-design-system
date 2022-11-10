import UIKit

/// Colors used in Projects.
/// Don’t write new code using this colors! Use `Themable.currentTheme.colors` instead.
public extension UIColor {

    private static var colors: Theme.Colors { ThemeManager.shared.currentTheme.colors }

    static var feedbackAccentBase: UIColor { colors.feedbackAccent.base }
    // swiftlint:disable:next force_unwrapping
    static var feedbackAccent10 = UIColor(named: "default-feedback-accent-10", in: .module, compatibleWith: nil)!
    static var feedbackAccent20: UIColor { colors.feedbackAccent.child20 }

    static var feedbackErrorBase: UIColor { colors.feedbackError.base }

    static var feedbackWarningBase: UIColor { colors.feedbackWarning.base }

    static var feedbackSuccessBase: UIColor { colors.feedbackSuccess.base }
    
    // Cell selection
    static var backgroundSelected: UIColor { .systemGray3 }
}
