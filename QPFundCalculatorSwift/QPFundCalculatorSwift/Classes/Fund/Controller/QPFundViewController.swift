//
//  QPFundViewController.swift
//  QPFundCalculatorSwift
//
//  Created by JackieQu on 2021/5/14.
//

import UIKit

class QPFundViewController: QPBaseViewController {

    lazy var tableView: UITableView = {
        let tableView = UITableView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WITHD, height: CONTENT_HEIGHT), style: UITableView.Style.plain)
        tableView.backgroundColor = UIColor.cyan
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.initUI()
        self.loadData()
    }
    
    override func initUI() {
        super.initUI()
        
        self.title = "test"
        self.view.addSubview(self.tableView)
    }
    
    override func loadData() {
        super.loadData()
        
    }
}

extension QPFundViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init()
        cell.textLabel?.text = "test"
        return cell
    }
}

extension QPFundViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        Dlog(indexPath)
    }
}
