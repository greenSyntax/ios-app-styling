//
//  AppLabel.swift
//  ios-app-theme
//
//  Created by Abhishek Ravi on 04/04/23.
//

import UIKit

class AppLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        stupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        stupUI()
    }
    
    private func stupUI() {
        self.font = AppFont.shared.bodyMedium
    }
    
    func setSize(of size:CGFloat, of weight: UIFont.Weight) {
        self.font = AppFont.shared.custom(size, weight)
    }
    
}
