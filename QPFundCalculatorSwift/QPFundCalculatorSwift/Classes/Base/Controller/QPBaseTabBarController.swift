//
//  QPBaseTabBarController.swift
//  QPFundCalculatorSwift
//
//  Created by JackieQu on 2021/5/14.
//

import UIKit

class QPBaseTabBarController: UITabBarController {

    lazy var tabBarModel = QPBaseTabBarModel.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var navVCArr: Array<QPBaseNavController> = []
        
        for vcModel in self.tabBarModel.availableVCArr {
            
            let vc = vcModel.cls!.init()
            vc.title = vcModel.vcTitle
            
            let navVC = QPBaseNavController(rootViewController: vc)
            navVCArr.append(navVC)
        }
        self.viewControllers = navVCArr
        self.selectedIndex = self.tabBarModel.defaultIndex
        
        /*
        let vcTitleArr = ["测试", "基金", "首页", "我的"]
        let vcNameArr = ["QPTestViewController", "QPFundViewController", "QPHomeViewController", "QPProfileViewController"]
        guard vcTitleArr.count == vcNameArr.count else { return }

        let bundleKey = Bundle.main.infoDictionary![kCFBundleExecutableKey as String] as! String
        var vcArr: Array<QPBaseNavController> = []
        for i in 0..<vcNameArr.count {

            let vcName = vcNameArr[i]
            let vcStr = bundleKey + "." + vcName

            if let vcCls: QPBaseViewController.Type = NSClassFromString(vcStr) as? QPBaseViewController.Type {
                let vc = vcCls.init()
                vc.title = vcTitleArr[i]
                let navVC = QPBaseNavController(rootViewController: vc)
                vcArr.append(navVC)
            }
        }
        self.viewControllers = vcArr
         */
    }
}
