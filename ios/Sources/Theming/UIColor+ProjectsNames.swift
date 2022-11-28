import UIKit

/// Colors used in Projects.
/// Don’t write new code using this colors! Use `Themable.currentTheme.colors` instead.
public extension UIColor {

    private static var colors: Theme.Colors { ThemeManager.shared.currentTheme.colors }

    static var brandPrimary02Base: UIColor { colors.brandPrimary02.base }
    static var brandPrimary0220: UIColor { colors.brandPrimary02.child20 }
    static var brandPrimary0240: UIColor { colors.brandPrimary02.child40 }
    static var brandPrimary0260: UIColor { colors.brandPrimary02.child60 }
    static var brandPrimary02100: UIColor { colors.brandPrimary02.child100 }

    static var brandSlate: UIColor { colors.brandPrimary02.child20 }
}
