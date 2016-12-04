//
//  ViewController.swift
//  welation
//
//  Created by zip520123 on 2016/11/23.
//  Copyright © 2016年 zip520123. All rights reserved.
//

import UIKit

class taskContent: UIViewController {

    
    @IBOutlet weak var ani: NSLayoutConstraint!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func dissmiss(_ sender: UIButton) {
//        dismiss(animated: true, completion: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        count+=1
        if count > 1 {
            dismiss(animated: true, completion: nil)
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        ani.constant = 0
        
        UIView.animate(withDuration: 1){
            self.view.layoutIfNeeded()
        }
    }


}

