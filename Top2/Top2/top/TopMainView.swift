//
//  TopMainView.swift
//  Top2
//
//  Created by 酒井典昭 on 2019/11/09.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol TopMainViewDelegate: NSObjectProtocol{
    func menuButton(_ sender: UIButton)
    func menberButton(_ sender: UIButton)
}

extension TopMainViewDelegate {
    
}
// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
     let topHedderView = TopHeaderView()
    @IBOutlet weak var slideImageView: UIImageView!
    @IBAction func menuButton(_ sender: UIButton) {
        delegate?.menuButton(sender)

    }
    @IBAction func menberButton(_ sender: UIButton) {
//        delegate?.menberButton(sender)
    }

}

// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}

// MARK: - Protocol
extension TopMainView {
    
}

// MARK: - method
extension TopMainView {
    
}

