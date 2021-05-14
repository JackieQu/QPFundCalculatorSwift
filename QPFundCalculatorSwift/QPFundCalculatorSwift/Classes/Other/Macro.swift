//
//  Macro.swift
//  QPFundCalculatorSwift
//
//  Created by JackieQu on 2021/5/14.
//

import Foundation
import UIKit

let SCREEN_WITHD        = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT       = UIScreen.main.bounds.size.height

let CONTENT_HEIGHT      = SCREEN_HEIGHT - STATUS_BAR_HEIGHT - CGFloat(TAB_BAR_HEIGHT)
let CONTENT_TAB_HEIGHT  = SCREEN_HEIGHT - STATUS_BAR_HEIGHT

let STATUS_BAR_HEIGHT   = UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.size.height ?? 20.0
let NAV_BAR_HEIGHT      = 44.0
let STATUS_NAV_HEIGHT   = STATUS_BAR_HEIGHT + CGFloat(NAV_BAR_HEIGHT)
let TAB_BAR_HEIGHT      = 49.0 + SAFE_MARGIN_BOTTOM

let SAFE_MARGIN_TOP     = STATUS_BAR_HEIGHT > 20.0 ? 24.0 : 0.0
let SAFE_MARGIN_BOTTOM  = STATUS_BAR_HEIGHT > 20.0 ? 34.0 : 0.0

func SCALE(value: CGFloat) -> CGFloat {
    let STANDARD_WIDTH  = 375.0
    return CGFloat(roundf(Float(value / CGFloat(STANDARD_WIDTH) * SCREEN_WITHD)))
}

func Dlog(_ items: Any, fileName: String = #file, lineNum: Int = #line) {
    #if DEBUG
    print("<\((fileName as NSString).lastPathComponent):\(lineNum)> \(items)")
    #endif
}
func DLogFunction(fileName: String = #file, lineNum: Int = #line, funcName: String = #function) {
    Dlog(_: funcName, fileName: fileName, lineNum: lineNum)
}
