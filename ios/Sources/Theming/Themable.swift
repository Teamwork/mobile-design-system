import UIKit

public protocol Themable {

    /// The current theme
    var currentTheme: Theme { get }
}

extension UIResponder: Themable {

    public var currentTheme: Theme { ThemeManager.shared.currentTheme }
}
