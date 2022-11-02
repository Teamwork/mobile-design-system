import UIKit

public final class ThemeManager {

    public static let shared = ThemeManager()

    public private(set) var currentTheme: Theme = ThemeManager.defaultTheme
}
