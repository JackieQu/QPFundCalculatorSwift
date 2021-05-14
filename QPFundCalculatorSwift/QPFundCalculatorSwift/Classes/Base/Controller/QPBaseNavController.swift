//
//  QPBaseNavController.swift
//  QPFundCalculatorSwift
//
//  Created by JackieQu on 2021/5/14.
//

import UIKit

class QPBaseNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationBar.isTranslucent = false
        self.navigationBar.tintColor = UIColor.white
        self.navigationBar.barTintColor = UIColor.orange
        self.navigationBar.titleTextAttributes = {[
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.bold),
            NSAttributedString.Key.foregroundColor: UIColor.white,
        ]}()
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        
        super .pushViewController(viewController, animated: animated)
    }
}
