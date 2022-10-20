import SwiftUI

class MobileDesignSystemTokens {}
let bundle = Bundle(for: MobileDesignSystemTokens.self)

extension Color {
  public static var brandPrimary0: Color {
    return Color.init("brandPrimary0", bundle: bundle)
  }
  public static var brandPrimary1: Color {
    return Color.init("brandPrimary1", bundle: bundle)
  }
  public static var brandPrimary2: Color {
    return Color.init("brandPrimary2", bundle: bundle)
  }
  public static var brandPrimary3: Color {
    return Color.init("brandPrimary3", bundle: bundle)
  }
  public static var brandPrimary4: Color {
    return Color.init("brandPrimary4", bundle: bundle)
  }
  public static var brandPrimaryBase: Color {
    return Color.init("brandPrimaryBase", bundle: bundle)
  }
  public static var brandPrimaryDark: Color {
    return Color.init("brandPrimaryDark", bundle: bundle)
  }
}