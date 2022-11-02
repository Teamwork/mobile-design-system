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
            ),
            brandSecondary01: Theme.DynamicColor(
                base: UIColor(named: "default-brand-secondary-01-base", in: .module, compatibleWith: nil)!,
                child20: UIColor(named: "default-brand-secondary-01-20", in: .module, compatibleWith: nil)!,
                child40: UIColor(named: "default-brand-secondary-01-40", in: .module, compatibleWith: nil)!,
                child60: UIColor(named: "default-brand-secondary-01-60", in: .module, compatibleWith: nil)!,
                child80: UIColor(named: "default-brand-secondary-01-80", in: .module, compatibleWith: nil)!,
                child100: UIColor(named: "default-brand-secondary-01-100", in: .module, compatibleWith: nil)!
            ),
            brandSecondary02: Theme.DynamicColor(
                base: UIColor(named: "default-brand-secondary-02-base", in: .module, compatibleWith: nil)!,
                child20: UIColor(named: "default-brand-secondary-02-20", in: .module, compatibleWith: nil)!,
                child40: UIColor(named: "default-brand-secondary-02-40", in: .module, compatibleWith: nil)!,
                child60: UIColor(named: "default-brand-secondary-02-60", in: .module, compatibleWith: nil)!,
                child80: UIColor(named: "default-brand-secondary-02-80", in: .module, compatibleWith: nil)!,
                child100: UIColor(named: "default-brand-secondary-02-100", in: .module, compatibleWith: nil)!
            ),
            brandSecondary03: Theme.DynamicColor(
                base: UIColor(named: "default-brand-secondary-03-base", in: .module, compatibleWith: nil)!,
                child20: UIColor(named: "default-brand-secondary-03-20", in: .module, compatibleWith: nil)!,
                child40: UIColor(named: "default-brand-secondary-03-40", in: .module, compatibleWith: nil)!,
                child60: UIColor(named: "default-brand-secondary-03-60", in: .module, compatibleWith: nil)!,
                child80: UIColor(named: "default-brand-secondary-03-80", in: .module, compatibleWith: nil)!,
                child100: UIColor(named: "default-brand-secondary-03-100", in: .module, compatibleWith: nil)!
            ),
            brandSecondary04: Theme.DynamicColor(
                base: UIColor(named: "default-brand-secondary-04-base", in: .module, compatibleWith: nil)!,
                child20: UIColor(named: "default-brand-secondary-04-20", in: .module, compatibleWith: nil)!,
                child40: UIColor(named: "default-brand-secondary-04-40", in: .module, compatibleWith: nil)!,
                child60: UIColor(named: "default-brand-secondary-04-60", in: .module, compatibleWith: nil)!,
                child80: UIColor(named: "default-brand-secondary-04-80", in: .module, compatibleWith: nil)!,
                child100: UIColor(named: "default-brand-secondary-04-100", in: .module, compatibleWith: nil)!
            ),
            brandSecondary05: Theme.DynamicColor(
                base: UIColor(named: "default-brand-secondary-05-base", in: .module, compatibleWith: nil)!,
                child20: UIColor(named: "default-brand-secondary-05-20", in: .module, compatibleWith: nil)!,
                child40: UIColor(named: "default-brand-secondary-05-40", in: .module, compatibleWith: nil)!,
                child60: UIColor(named: "default-brand-secondary-05-60", in: .module, compatibleWith: nil)!,
                child80: UIColor(named: "default-brand-secondary-05-80", in: .module, compatibleWith: nil)!,
                child100: UIColor(named: "default-brand-secondary-05-100", in: .module, compatibleWith: nil)!
            ),
            brandSecondary06: Theme.DynamicColor(
                base: UIColor(named: "default-brand-secondary-06-base", in: .module, compatibleWith: nil)!,
                child20: UIColor(named: "default-brand-secondary-06-20", in: .module, compatibleWith: nil)!,
                child40: UIColor(named: "default-brand-secondary-06-40", in: .module, compatibleWith: nil)!,
                child60: UIColor(named: "default-brand-secondary-06-60", in: .module, compatibleWith: nil)!,
                child80: UIColor(named: "default-brand-secondary-06-80", in: .module, compatibleWith: nil)!,
                child100: UIColor(named: "default-brand-secondary-06-100", in: .module, compatibleWith: nil)!
            ),
            brandSecondary07: Theme.DynamicColor(
                base: UIColor(named: "default-brand-secondary-07-base", in: .module, compatibleWith: nil)!,
                child20: UIColor(named: "default-brand-secondary-07-20", in: .module, compatibleWith: nil)!,
                child40: UIColor(named: "default-brand-secondary-07-40", in: .module, compatibleWith: nil)!,
                child60: UIColor(named: "default-brand-secondary-07-60", in: .module, compatibleWith: nil)!,
                child80: UIColor(named: "default-brand-secondary-07-80", in: .module, compatibleWith: nil)!,
                child100: UIColor(named: "default-brand-secondary-07-100", in: .module, compatibleWith: nil)!
            ),
            brandSecondary08: Theme.DynamicColor(
                base: UIColor(named: "default-brand-secondary-08-base", in: .module, compatibleWith: nil)!,
                child20: UIColor(named: "default-brand-secondary-08-20", in: .module, compatibleWith: nil)!,
                child40: UIColor(named: "default-brand-secondary-08-40", in: .module, compatibleWith: nil)!,
                child60: UIColor(named: "default-brand-secondary-08-60", in: .module, compatibleWith: nil)!,
                child80: UIColor(named: "default-brand-secondary-08-80", in: .module, compatibleWith: nil)!,
                child100: UIColor(named: "default-brand-secondary-08-100", in: .module, compatibleWith: nil)!
            ),
            neutralLight: UIColor(named: "default-neutral-light", in: .module, compatibleWith: nil)!,
            neutralDark: UIColor(named: "default-neutral-dark", in: .module, compatibleWith: nil)!,
            neutralBackground: .systemBackground,
            neutralShadow: UIColor(named: "default-neutral-shadow", in: .module, compatibleWith: nil)!,
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
