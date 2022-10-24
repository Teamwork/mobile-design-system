import UIKit
  
class MobileDesignSystemTokens {}
let bundle = Bundle(for: MobileDesignSystemTokens.self)
  
extension UIColor {
  public static var bgDefault: Color {
    return UIColor(named: "bgDefault", in: bundle, compatibleWith: nil)
  }
  public static var bgSubtle: Color {
    return UIColor(named: "bgSubtle", in: bundle, compatibleWith: nil)
  }
  public static var bgMuted: Color {
    return UIColor(named: "bgMuted", in: bundle, compatibleWith: nil)
  }
  public static var fgDefault: Color {
    return UIColor(named: "fgDefault", in: bundle, compatibleWith: nil)
  }
  public static var fgOnAccent: Color {
    return UIColor(named: "fgOnAccent", in: bundle, compatibleWith: nil)
  }
  public static var fgMuted: Color {
    return UIColor(named: "fgMuted", in: bundle, compatibleWith: nil)
  }
  public static var fgSubtle: Color {
    return UIColor(named: "fgSubtle", in: bundle, compatibleWith: nil)
  }
  public static var accentDefault: Color {
    return UIColor(named: "accentDefault", in: bundle, compatibleWith: nil)
  }
  public static var accentSubtle: Color {
    return UIColor(named: "accentSubtle", in: bundle, compatibleWith: nil)
  }
}