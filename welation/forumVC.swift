//
//  forumVC.swift
//  welation
//
//  Created by zip520123 on 2016/12/4.
//  Copyright © 2016年 zip520123. All rights reserved.
//

import UIKit

class forumVC: UIViewController {
    @IBOutlet weak var ani: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        ani.constant = 0
        UIView.animate(withDuration: 1.5, animations: {
            self.view.layoutIfNeeded()
        })
    }


}
