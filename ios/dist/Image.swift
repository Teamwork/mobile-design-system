import SwiftUI

extension Image {
  public static var logo: Image {
    return Image.init("logo", bundle: bundle)
  }
  public static var empty: Image {
    return Image.init("empty", bundle: bundle)
  }
  public static var files: Image {
    return Image.init("files", bundle: bundle)
  }
};