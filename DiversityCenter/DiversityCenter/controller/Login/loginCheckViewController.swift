//
//  loginCheckViewController.swift
//  DiversityCenter
//
//  Created by Arrido Arfiadi on 6/14/18.
//  Copyright © 2018 Arrido Arfiadi. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class loginCheckViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        if (FBSDKAccessToken.current()) != nil{
            //Goes to home screen
            self.performSegue(withIdentifier: "signedIn", sender: self)
            
        }
        else{
            //Goes to login screen
            self.performSegue(withIdentifier: "no", sender: self)
        }
    }
    


}
