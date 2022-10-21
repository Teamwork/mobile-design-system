import SwiftUI

class MobileDesignSystemTokens {}
let bundle = Bundle(for: MobileDesignSystemTokens.self)

extension Color {
  public static var bgDefault: Color {
    return Color.init("bgDefault", bundle: bundle)
  }
  public static var bgSubtle: Color {
    return Color.init("bgSubtle", bundle: bundle)
  }
  public static var bgMuted: Color {
    return Color.init("bgMuted", bundle: bundle)
  }
  public static var fgDefault: Color {
    return Color.init("fgDefault", bundle: bundle)
  }
  public static var fgOnAccent: Color {
    return Color.init("fgOnAccent", bundle: bundle)
  }
  public static var fgMuted: Color {
    return Color.init("fgMuted", bundle: bundle)
  }
  public static var fgSubtle: Color {
    return Color.init("fgSubtle", bundle: bundle)
  }
  public static var accentDefault: Color {
    return Color.init("accentDefault", bundle: bundle)
  }
  public static var accentSubtle: Color {
    return Color.init("accentSubtle", bundle: bundle)
  }
}