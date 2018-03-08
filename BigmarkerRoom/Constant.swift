import UIKit
let SERVICE_API_DOMAIN: String = "https://www.bigmarker.com"
let HOST = "www.bigmarker.com"
let LINKEDINCALLBACKURL = "https://www.bigmarker.com/auth/linkedin/callback"


let DESKTOP_TOPVIEW_TAG      = 500
let SCREEN_VIEW_TAG          = 501
let SCREEN_CONTENT_VIEW_TAG  = 502
let VIDEO_PANNEL_VIEW_TAG    = 503
let TABBAR_VIEW_TAG          = 504
let VIDEO_VIEW_ATG           = 505
let DESKTOP_VIEW_TAG         = 506
let VIDEO_BUTTON_TAG         = 507
let AUDIO_BUTTON_TAG         = 508
let PROGRESS_VIEW_TAG        = 509
let VIDEO_BOTTOM_VIEW_TAG    = 510
let WHITE_BOARD_TAG          = 511
let SCREEN_SHARE_BOTTOM_VIEW = 512

let StatusBarH : CGFloat = 20
let NavigationBarH : CGFloat = 44
let TabbarH : CGFloat = 49

let BMROOMNAV_COLOR = UIColor(red: 38/255, green: 48/255, blue: 68/255, alpha: 1)

let ScreenW = UIScreen.main.bounds.width
let KScreenH = UIScreen.main.bounds.height
let ScreenH = UIScreen.main.bounds.height

let SCREEN_WIDTH: Int   = Int(UIScreen.main.bounds.size.width)
let SCREEN_HEIGHT: Int  = Int(UIScreen.main.bounds.size.height)
let SCREEN_WIDTH_CGFloat: CGFloat   = CGFloat(UIScreen.main.bounds.size.width)
let SCREEN_HEIGHT_CGFloat: CGFloat  = CGFloat(UIScreen.main.bounds.size.height)
let UI_IS_IPHONE5: Bool = SCREEN_HEIGHT_CGFloat == 568
let UI_IS_IPHONE6: Bool = SCREEN_HEIGHT_CGFloat == 667.0
let UI_IS_IPHONE6PLUS: Bool = SCREEN_HEIGHT_CGFloat == 736.0
var OBFUSCATEDIdARRAY = [String]()
class Constant {

}

func printLog<T>(_ message: T,file: String = #file, method: String = #function, line: Int = #line) {
    //println("\(file.lastPathComponent)[\(line)], \(method): \(message)")
    #if DEBUG
        print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    #endif
    

}

