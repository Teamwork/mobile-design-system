import UIKit

public extension ThemeManager {

    static let defaultTheme = Theme(
        colors: Theme.Colors(
            brandPrimary02: Theme.DynamicColor(
                base: UIColor(named: "default-brand-primary-02-base", in: .module, compatibleWith: nil)!,
                child20: UIColor(named: "default-brand-primary-02-20", in: .module, compatibleWith: nil)!,
                child40: UIColor(named: "default-brand-primary-02-40", in: .module, compatibleWith: nil)!,
                child60: UIColor(named: "default-brand-primary-02-60", in: .module, compatibleWith: nil)!,
                child80: UIColor(named: "default-brand-primary-02-80", in: .module, compatibleWith: nil)!,
                child100: UIColor(named: "default-brand-primary-02-100", in: .module, compatibleWith: nil)!
            )
        )
    )
}
