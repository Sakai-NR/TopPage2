//
//  TopHeaderView.swift
//  Top2
//
//  Created by 酒井典昭 on 2019/11/19.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol TopHeaderViewDelegate: NSObjectProtocol{
    func backButton(_ sender: UIButton)
    
}

extension TopHeaderViewDelegate {
    
}
// MARK: - Property
class TopHeaderView: BaseView {
    weak var delegate: TopHeaderViewDelegate? = nil
    @IBAction func backButton(_ sender: UIButton) {
        delegate?.backButton(sender)
        
    }
    @IBOutlet weak var noText: UILabel!
    
    @IBAction func noButton(_ sender: UIButton) {
        
    }
    
}

// MARK: - Life cycle
extension TopHeaderView {
    override func awakeFromNib() {
        super.awakeFromNib()
        labelHidden()
        
    }
}

// MARK: - Protocol
extension TopHeaderView {
    
}

// MARK: - method
extension TopHeaderView {
    
    func labelHidden(){
    noText.isHidden = true
    }
    
}

