import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kGilroyExtrabold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kGilroyExtrabold, size: size)
    }

    static func kGilroySemibold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kGilroySemibold, size: size)
    }

    static func kGilroyBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kGilroyBold, size: size)
    }

    static func kGilroyRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kGilroyRegular, size: size)
    }

    static func kGilroyMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kGilroyMedium, size: size)
    }

    static func kProximaNovaSemibold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kProximaNovaSemibold, size: size)
    }

    static func kProximaNovaRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kProximaNovaRegular, size: size)
    }

    static func kProximaNovaBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kProximaNovaBold, size: size)
    }

    static func kSFProDisplayBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayBold, size: size)
    }

    static func kSFProDisplayRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayRegular, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kGilroyExtrabold":
            result = self.kGilroyExtrabold(size: size)
        case "kGilroySemibold":
            result = self.kGilroySemibold(size: size)
        case "kGilroyBold":
            result = self.kGilroyBold(size: size)
        case "kGilroyRegular":
            result = self.kGilroyRegular(size: size)
        case "kGilroyMedium":
            result = self.kGilroyMedium(size: size)
        case "kProximaNovaSemibold":
            result = self.kProximaNovaSemibold(size: size)
        case "kProximaNovaRegular":
            result = self.kProximaNovaRegular(size: size)
        case "kProximaNovaBold":
            result = self.kProximaNovaBold(size: size)
        case "kSFProDisplayBold":
            result = self.kSFProDisplayBold(size: size)
        case "kSFProDisplayRegular":
            result = self.kSFProDisplayRegular(size: size)
        default:
            result = self.kGilroyExtrabold(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kGilroyExtrabold: String = "Gilroy-Extrabold"
        /**
         * Please Add this fonts Manually
         */
        static let kGilroySemibold: String = "Gilroy-Semibold"
        /**
         * Please Add this fonts Manually
         */
        static let kGilroyBold: String = "Gilroy-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kGilroyRegular: String = "Gilroy-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kGilroyMedium: String = "Gilroy-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kProximaNovaSemibold: String = "ProximaNova-Semibold"
        /**
         * Please Add this fonts Manually
         */
        static let kProximaNovaRegular: String = "ProximaNova-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kProximaNovaBold: String = "ProximaNova-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayBold: String = "SFProDisplay-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayRegular: String = "SFProDisplay-Regular"
    }
}
