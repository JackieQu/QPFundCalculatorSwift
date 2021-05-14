//
//  QPHomeViewController.swift
//  QPFundCalculatorSwift
//
//  Created by JackieQu on 2021/5/14.
//

import UIKit

class QPHomeViewController: QPBaseViewController {

    lazy var btn: UIButton = {
        let btn = UIButton.init(type: UIButton.ButtonType.custom)
        btn.frame = CGRect(x: 100, y: 100, width: SCREEN_WITHD / 2, height: 40)
        btn.backgroundColor = UIColor.orange
        btn.setTitle("test", for: UIControl.State.normal)
        btn.setTitleColor(UIColor.white, for: UIControl.State.normal)
        btn.layer.cornerRadius = 10
        btn.layer.masksToBounds = true
        btn.clipsToBounds = true
        btn.addTarget(self, action: #selector(clickAction(sender:)), for: UIControl.Event.touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        self.view.addSubview(self.btn)
    }
    
    @objc func clickAction(sender: UIButton) {
        let fundVC = QPFundViewController()
        self.pushVC(fundVC)
    }
}
