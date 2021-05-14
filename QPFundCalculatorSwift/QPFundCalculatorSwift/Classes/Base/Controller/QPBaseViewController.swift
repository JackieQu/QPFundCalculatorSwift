//
//  QPBaseViewController.swift
//  QPFundCalculatorSwift
//
//  Created by JackieQu on 2021/5/14.
//

/*
#ifdef DEBUG

#define DLog(s, ...)               NSLog(@"<%@:(%d)> %@",  \
                                            [[NSString stringWithUTF8String:__FILE__] lastPathComponent],   \
                                            __LINE__,   \
                                            [NSString stringWithFormat:(s),##__VA_ARGS__]);
#define DLogFunction               DLog(@"%s", __FUNCTION__);

#else

#define DLog(s, ...)
#define DLogFunction

#endif
 */
 
import UIKit

class QPBaseViewController: UIViewController {
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.view.backgroundColor = UIColor.init(red: CGFloat(arc4random() % 256) / 255.0, green: CGFloat(arc4random() % 256) / 255.0, blue: CGFloat(arc4random() % 256) / 255.0, alpha: 1)
        self.view.backgroundColor = UIColor.white
        self.navigationItem.backBarButtonItem = UIBarButtonItem.init(title: "返回", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        DLogFunction()
    }
    
    deinit {
        DLogFunction()
        
        NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: - Custom Methods
    
    func initUI() {
        
    }
    func loadData() {
        
    }
    
    func pushVC(_ vc: UIViewController, animated: Bool) {
        self.navigationController?.pushViewController(vc, animated: animated)
    }
    func pushVC(_ vc: UIViewController) {
        self.pushVC(vc, animated: true)
    }
    
    func popVC(animated: Bool) {
        self.navigationController?.popViewController(animated: animated)
    }
    func popVC() {
        self.popVC(animated: true)
    }
    
    func popToVC(_ vc: UIViewController, animated: Bool) {
        self.navigationController?.popToViewController(vc, animated: animated)
    }
    func popToVC(_ vc: UIViewController) {
        self.popToVC(vc, animated: true)
    }
    
    func presentVC(_ vc: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
        self.present(vc, animated: animated, completion: completion)
    }
    func presentVC(_ vc: UIViewController) {
        self.presentVC(vc, animated: true, completion: nil)
    }
    
    func dismissVC(animated: Bool, completion: (() -> Void)? = nil) {
        self.dismiss(animated: animated, completion: completion)
    }
    func dismissVC() {
        self.dismissVC(animated: true, completion: nil)
    }
}

