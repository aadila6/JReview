//
//  ViewController.swift
//  Jreview
//
//  Created by Adila on 8/10/20.
//  Copyright © 2020 Adila Abudureheman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Here is Review Screen")
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func PushReviewScreen(_ sender: Any) {
        self.navigationController?.pushViewController(ReviewViewController(), animated: true)
    }
    

}

