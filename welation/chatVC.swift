//
//  chatVC.swift
//  welation
//
//  Created by zip520123 on 2016/12/3.
//  Copyright © 2016年 zip520123. All rights reserved.
//

import UIKit

class chatVC: UIViewController {

    
    @IBOutlet weak var aniMidC: NSLayoutConstraint!
    
    @IBAction func alertShow(_ sender: UIButton) {
        let UIAC = UIAlertController(title: "現在好感度達標？", message: "是否接收任務?", preferredStyle: .alert )
        UIAC.addAction(UIAlertAction(title: "接受", style: .default){ _ in
            
            let alert = UIAlertController(title: "", message: "你現在可以去任務簿檢查雙人任務囉！", preferredStyle: .alert )
            alert.addAction(UIAlertAction(title: "確定", style:  .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        
        })
        UIAC.addAction(UIAlertAction(title: "拒絕", style: .cancel, handler: nil))
        self.present(UIAC, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        aniMidC.constant = 0
        
        UIView.animate(withDuration: 1){
                self.view.layoutIfNeeded()
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
