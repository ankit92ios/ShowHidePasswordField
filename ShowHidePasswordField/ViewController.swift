//
//  ViewController.swift
//  ShowHidePasswordField
//
//  Created by ankit on 21/05/2020.
//  Copyright © 2020 ankit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtPassword.showEyePasswordField()
    }


}

