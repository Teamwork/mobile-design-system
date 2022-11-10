import UIKit

public extension ThemeManager {

    static let defaultTheme = Theme(
        colors: Theme.Colors(
            feedbackAccent: Theme.DynamicColor(
                base: UIColor(named: "default-feedback-accent-base", in: .module, compatibleWith: nil)!,
                child20: UIColor(named: "default-feedback-accent-20", in: .module, compatibleWith: nil)!,
                child40: UIColor(named: "default-feedback-accent-40", in: .module, compatibleWith: nil)!,
                child60: UIColor(named: "default-feedback-accent-60", in: .module, compatibleWith: nil)!,
                child80: UIColor(named: "default-feedback-accent-80", in: .module, compatibleWith: nil)!,
                child100: UIColor(named: "default-feedback-accent-100", in: .module, compatibleWith: nil)!
            ),
            feedbackError: Theme.DynamicColor(
                base: UIColor(named: "default-feedback-error-base", in: .module, compatibleWith: nil)!,
                child20: UIColor(named: "default-feedback-error-20", in: .module, compatibleWith: nil)!,
                child40: UIColor(named: "default-feedback-error-40", in: .module, compatibleWith: nil)!,
                child60: UIColor(named: "default-feedback-error-60", in: .module, compatibleWith: nil)!,
                child80: UIColor(named: "default-feedback-error-80", in: .module, compatibleWith: nil)!,
                child100: UIColor(named: "default-feedback-error-100", in: .module, compatibleWith: nil)!
            ),
            feedbackWarning: Theme.DynamicColor(
                base: UIColor(named: "default-feedback-warning-base", in: .module, compatibleWith: nil)!,
                child20: UIColor(named: "default-feedback-warning-20", in: .module, compatibleWith: nil)!,
                child40: UIColor(named: "default-feedback-warning-40", in: .module, compatibleWith: nil)!,
                child60: UIColor(named: "default-feedback-warning-60", in: .module, compatibleWith: nil)!,
                child80: UIColor(named: "default-feedback-warning-80", in: .module, compatibleWith: nil)!,
                child100: UIColor(named: "default-feedback-warning-100", in: .module, compatibleWith: nil)!
            ),
            feedbackSuccess: Theme.DynamicColor(
                base: UIColor(named: "default-feedback-success-base", in: .module, compatibleWith: nil)!,
                child20: UIColor(named: "default-feedback-success-20", in: .module, compatibleWith: nil)!,
                child40: UIColor(named: "default-feedback-success-40", in: .module, compatibleWith: nil)!,
                child60: UIColor(named: "default-feedback-success-60", in: .module, compatibleWith: nil)!,
                child80: UIColor(named: "default-feedback-success-80", in: .module, compatibleWith: nil)!,
                child100: UIColor(named: "default-feedback-success-100", in: .module, compatibleWith: nil)!
            )
        ),
        fonts: Theme.Fonts(
            header01: Theme.DynamicFont(base: .systemFont(ofSize: 32.0)),
            header02: Theme.DynamicFont(base: .systemFont(ofSize: 22.0)),
            header03: Theme.DynamicFont(base: .systemFont(ofSize: 20.0)),
            header04: Theme.DynamicFont(base: .systemFont(ofSize: 18.0)),
            header05: Theme.DynamicFont(base: .systemFont(ofSize: 14.0)),
            header06: Theme.DynamicFont(base: .systemFont(ofSize: 16.0)),
            body01: Theme.DynamicFont(base: .systemFont(ofSize: 16.0)),
            body02: Theme.DynamicFont(base: .systemFont(ofSize: 14.0)),
            buttonSmall: Theme.DynamicFont(base: .systemFont(ofSize: 14.0)),
            buttonLarge: Theme.DynamicFont(base: .systemFont(ofSize: 16.0)),
            subtitle: Theme.DynamicFont(base: .systemFont(ofSize: 13.0)),
            caption: Theme.DynamicFont(base: .systemFont(ofSize: 10.0))
        )
    )
}
