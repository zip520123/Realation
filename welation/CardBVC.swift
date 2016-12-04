//
//  CardBVC.swift
//  welation
//
//  Created by zip520123 on 2016/12/3.
//  Copyright © 2016年 zip520123. All rights reserved.
//

import UIKit

class CardBVC: UIViewController {

    @IBOutlet weak var timer: UILabel!
    var reduceTimer = Timer()
    var nowTimer = Date()
    let formatterr = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        timer.shadowColor = UIColor.white
        nowTimer.addTimeInterval(13300)
        formatterr.dateFormat = "HH:mm:ss"
        reduceTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.update), userInfo: nil, repeats: true);
        let dateObj = formatterr.string(from: nowTimer)
        timer.text = dateObj
        reduceTimer.fire()
//        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//        [formatter setDateFormat:@"yyyy"];
//        
//        //Optionally for time zone conversions
//        [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"..."]];
//        
//        NSString *stringFromDate = [formatter stringFromDate:myNSDateInstance];s
        
    }
    func update(){
        nowTimer.addTimeInterval(-1)
        let dateObj = formatterr.string(from: nowTimer)
        
        timer.text = dateObj
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
