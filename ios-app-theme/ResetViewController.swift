//
//  ViewController.swift
//  ios-app-theme
//
//  Created by Abhishek Ravi on 04/04/23.
//

import UIKit

class ResetViewController: UIViewController {

    @IBOutlet weak var sampleTextField: AppTextField!
    @IBOutlet weak var buttonLogin: AppButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonLoginAction(_ sender: Any) {
        self.buttonLogin.isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
            self.buttonLogin.isLoading = false
        })
    }
    
}

