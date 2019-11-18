//
//  TopMenuView.swift
//  Top2
//
//  Created by 酒井典昭 on 2019/11/13.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol TopMenuViewDelegate: NSObjectProtocol{
    func didselectedRow(indexpath:IndexPath)
    
}

extension TopMenuViewDelegate {
    
}
// MARK: - Property
class TopMenuView: BaseView {
    weak var delegate: TopMenuViewDelegate? = nil
    @IBOutlet weak var menuTableView: UITableView!
    var menulabelsName:[String] = ["予約","スタンプ","クーポン","4","5","6"]
}

// MARK: - Life cycle
extension TopMenuView {
    override func awakeFromNib() {
        super.awakeFromNib()
        menuTableView.dataSource = self
        menuTableView.delegate = self
        loadTableViewCellFromXib(tableView: menuTableView, cellName: "TopMenuTableViewCell")
    }
}

// MARK: - Protocol
extension TopMenuView:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menulabelsName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell : TopMenuTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TopMenuTableViewCell", for: indexPath)as? TopMenuTableViewCell else{return UITableViewCell()}
        cell.menuLabel.text = menulabelsName[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        delegate?.didselectedRow(indexpath: indexPath)
  }
}
// MARK: - method
    
extension TopMenuView {
    
}

