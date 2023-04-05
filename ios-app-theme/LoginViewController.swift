//
//  LoginViewController.swift
//  ios-app-theme
//
//  Created by Abhishek Ravi on 05/04/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var labelTitle: AppLabel!
    @IBOutlet weak var buttonLogin: AppButton!
    @IBOutlet weak var buttonResetPassword: AppButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTitle.setSize(of: 24, of: .bold)
        buttonResetPassword.setStyleState(.secondary)
    }
    
    @IBAction func buttonResetPasswordAction(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ResetViewController") as! ResetViewController
        self.present(vc, animated: true)
    }
    
}
