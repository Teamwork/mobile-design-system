import Foundation

enum DesignSystem {

 enum BorderWidth {

  public static let xs = CGFloat(0.5)
  public static let sm = CGFloat(1)
  public static let md = CGFloat(2)
  public static let lg = CGFloat(3)
 }

 enum BorderRadius {

  public static let none = CGFloat(0)
  public static let xs = CGFloat(4)
  public static let sm = CGFloat(8)
  public static let md = CGFloat(12)
  public static let lg = CGFloat(16)
  public static let xl = CGFloat(34)
  public static let full = CGFloat(100)
 }

 enum LineHeights {

  public static let 0 = CGFloat(44)
  public static let 1 = CGFloat(52)
  public static let 2 = CGFloat(64)
  public static let 3 = CGFloat(32)
  public static let 4 = CGFloat(36)
  public static let 5 = CGFloat(40)
  public static let 6 = CGFloat(20)
  public static let 7 = CGFloat(24)
  public static let 8 = CGFloat(28)
  public static let 9 = CGFloat(16)
 }

 enum FontSizes {

  public static let 0 = CGFloat(11)
  public static let 1 = CGFloat(12)
  public static let 2 = CGFloat(14)
  public static let 3 = CGFloat(16)
  public static let 4 = CGFloat(22)
  public static let 5 = CGFloat(24)
  public static let 6 = CGFloat(28)
  public static let 7 = CGFloat(32)
  public static let 8 = CGFloat(36)
  public static let 9 = CGFloat(45)
  public static let 10 = CGFloat(57)
 }

 enum LetterSpacing {

  public static let 5 = CGFloat(0.4)
  public static let 6 = CGFloat(0.25)
  public static let 7 = CGFloat(0.5)
 }

 enum ParagraphSpacing {

  public static let 0 = CGFloat(0)
 }
}