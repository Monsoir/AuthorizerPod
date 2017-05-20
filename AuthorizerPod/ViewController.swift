//
//  ViewController.swift
//  AuthorizerPod
//
//  Created by Mon on 15/05/2017.
//  Copyright © 2017 wenyongyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        PhotosAuthorizer.requestAuthorization(success: { (status) in
//            print("authorized")
//        }) { (status) in
//            print("not authorized")
//        }
        
        CameraAuthorizer.requestAuthorization(success: { (status) in
            print("authorized")
        }) { (status) in
            print("not authorized")
        }
        
//        MicroPhoneAuthorizer.requestAuthorization(success: { (status) in
//            print("authorized")
//        }) { (status) in
//            print("not authorized")
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

