//
//  AppButton.swift
//  ios-app-theme
//
//  Created by Abhishek Ravi on 04/04/23.
//

import UIKit

enum ButtonState {
    case primary
    case secondary
}

class AppButton: UIButton {
    
    private let activityIndicator = UIActivityIndicatorView(style: .medium)
    private var defaultStyle: ButtonState = .primary
    
    var isLoading: Bool = false {
        didSet {
            updateView()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        intialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        intialize()
    }
    
    private func intialize() {
        self.titleLabel?.font = AppFont.shared.custom(16, .bold)
        self.layer.cornerRadius = 2.0
        self.setStyleState(self.defaultStyle)
        
        // Indicator
        addSubview(activityIndicator)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    private func updateView() {
        if isLoading {
            activityIndicator.startAnimating()
            self.titleLabel?.alpha = 0
            self.titleLabel?.layer.opacity = 0
            self.imageView?.alpha = 0
            self.titleLabel?.isHidden = true
            self.titleLabel?.textColor = UIColor.clear
            isEnabled = false
        } else {
            activityIndicator.stopAnimating()
            self.titleLabel?.alpha = 1
            self.titleLabel?.layer.opacity = 1
            self.imageView?.alpha = 1
            self.titleLabel?.textColor = UIColor.appWhite
            self.titleLabel?.isHidden = false
            isEnabled = true
        }
    }
    
    func setStyleState(_ state: ButtonState) {
        if state == .primary {
            self.setTitleColor(UIColor.appWhite, for: .normal)
            self.backgroundColor = UIColor.appBlack
            self.layer.borderColor = UIColor.appBlack.cgColor
            self.layer.borderWidth = 1.5
            self.defaultStyle = .primary
        } else {
            self.setTitleColor(UIColor.appBlack, for: .normal)
            self.backgroundColor = UIColor.appWhite
            self.defaultStyle = .secondary
            self.layer.borderWidth = 1.5
            self.layer.borderColor = UIColor.appBlack.cgColor
        }
    }
    
}
