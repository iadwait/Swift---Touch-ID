//
//  ViewController.swift
//  Touch ID
//
//  Created by Adwait Barkale on 09/09/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnTouchIDTapped(_ sender: UIButton) {
        let context:LAContext = LAContext()
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil){
            //Device is Touched ID Enabled
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "We need your Touch ID for Authentication purpose") { (isSuccess, error) in
                if isSuccess{
                    print("FingerPrint Matched Success")
                }else{
                    print("Fingerprint Does not match")
                }
            }
        }else{
            print("Device Does not have FingerPrint Scanner")
        }
        
    }
    
}

