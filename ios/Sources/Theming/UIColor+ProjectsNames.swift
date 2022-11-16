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

    static var brandSecondary01Base: UIColor { colors.brandSecondary01.base }
    static var brandSecondary0120: UIColor { colors.brandSecondary01.child20 }
    static var brandSecondary0140: UIColor { colors.brandSecondary01.child40 }
    static var brandSecondary0180: UIColor { colors.brandSecondary01.child80 }
    static var brandSecondary01100: UIColor { colors.brandSecondary01.child100 }

    static var brandSecondary02Base: UIColor { colors.brandSecondary02.base }
    static var brandSecondary0220: UIColor { colors.brandSecondary02.child20 }
    static var brandSecondary0240: UIColor { colors.brandSecondary02.child40 }
    static var brandSecondary0280: UIColor { colors.brandSecondary02.child80 }
    static var brandSecondary02100: UIColor { colors.brandSecondary02.child100 }

    static var brandSecondary03Base: UIColor { colors.brandSecondary03.base }
    static var brandSecondary0320: UIColor { colors.brandSecondary03.child20 }
    static var brandSecondary0340: UIColor { colors.brandSecondary03.child40 }
    static var brandSecondary0380: UIColor { colors.brandSecondary03.child80 }
    static var brandSecondary03100: UIColor { colors.brandSecondary03.child100 }

    static var brandSecondary04Base: UIColor { colors.brandSecondary04.base }
    static var brandSecondary0420: UIColor { colors.brandSecondary04.child20 }
    static var brandSecondary0440: UIColor { colors.brandSecondary04.child40 }
    static var brandSecondary0480: UIColor { colors.brandSecondary04.child80 }
    static var brandSecondary04100: UIColor { colors.brandSecondary04.child100 }

    static var brandSecondary05Base: UIColor { colors.brandSecondary05.base }
    static var brandSecondary0520: UIColor { colors.brandSecondary05.child20 }
    static var brandSecondary0540: UIColor { colors.brandSecondary05.child40 }
    static var brandSecondary0580: UIColor { colors.brandSecondary05.child80 }
    static var brandSecondary05100: UIColor { colors.brandSecondary05.child100 }

    static var brandSecondary06Base: UIColor { colors.brandSecondary06.base }
    static var brandSecondary0620: UIColor { colors.brandSecondary06.child20 }
    static var brandSecondary0640: UIColor { colors.brandSecondary06.child40 }
    static var brandSecondary0680: UIColor { colors.brandSecondary06.child80 }
    static var brandSecondary06100: UIColor { colors.brandSecondary06.child100 }

    static var brandSecondary07Base: UIColor { colors.brandSecondary07.base }
    static var brandSecondary0720: UIColor { colors.brandSecondary07.child20 }
    static var brandSecondary0740: UIColor { colors.brandSecondary07.child40 }
    static var brandSecondary0780: UIColor { colors.brandSecondary07.child80 }
    static var brandSecondary07100: UIColor { colors.brandSecondary07.child100 }

    static var brandSecondary08Base: UIColor { colors.brandSecondary08.base }
    static var brandSecondary0820: UIColor { colors.brandSecondary08.child20 }
    static var brandSecondary0840: UIColor { colors.brandSecondary08.child40 }
    static var brandSecondary0880: UIColor { colors.brandSecondary08.child80 }
    static var brandSecondary08100: UIColor { colors.brandSecondary08.child100 }
    
    static var brandSlate: UIColor { colors.brandPrimary02.child20 }
    static var brandPurpleBase: UIColor { colors.brandSecondary01.base }
    static var brandBlue20: UIColor { colors.brandSecondary07.child20 }
    static var brandBlue40: UIColor { colors.brandSecondary07.child40 }
    static var brandBlueBase: UIColor { colors.brandSecondary07.base }
    static var brandRedBase: UIColor { colors.brandSecondary04.base }
    static var brandYellowBase: UIColor { colors.brandSecondary08.base }
    static var brandIndigoBase: UIColor { colors.brandSecondary06.base }
    
    // Cell selection
    static var backgroundSelected: UIColor { .systemGray3 }
}
