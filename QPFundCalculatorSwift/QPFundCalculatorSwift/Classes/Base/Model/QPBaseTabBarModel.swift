//
//  QPBaseTabBarModel.swift
//  QPFundCalculatorSwift
//
//  Created by JackieQu on 2021/5/14.
//

import UIKit

class QPBaseTabBarModel: QPBaseModel {

    var vcList: Array<QPViewControllerModel> = []
    var availableVCArr: Array<QPViewControllerModel> = []
    var defaultIndex: Int = 0
    
    override init() {
        super.init()
        
        let bundleKey = Bundle.main.infoDictionary![kCFBundleExecutableKey as String] as! String
        
        let path = Bundle.main.path(forResource: "QPBaseTabBar", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        defaultIndex = dict?.value(forKey: "defaultIndex") as! Int
        let vcDictList = dict?.value(forKey: "vcList") as! Array<NSDictionary>
        var vcModelArr: Array<QPViewControllerModel> = []
        for vcDict in vcDictList {
            let vcModel = QPViewControllerModel.init(dict: vcDict)
        
            let vcStr = bundleKey + "." + vcModel.vcName
            if let vcCls: QPBaseViewController.Type = NSClassFromString(vcStr) as? QPBaseViewController.Type {
                if vcModel.show && !vcModel.vcTitle.isEmpty {
                    vcModel.cls = vcCls
                    vcModelArr.append(vcModel)
                }
            }
        }
        
        self.availableVCArr = vcModelArr
        if self.defaultIndex > vcModelArr.count - 1 {
            self.defaultIndex = 0
        }
    }
}

class QPViewControllerModel: QPBaseModel {
    
    var show: Bool = false
    var vcName: String = ""
    var vcTitle: String = ""
    
    var cls: QPBaseViewController.Type?
    
    init(dict: NSDictionary) {
        show = dict.value(forKey: "show") as! Bool
        vcName = dict.value(forKey: "vcName") as! String
        vcTitle = dict.value(forKey: "vcTitle") as! String
    }
}
