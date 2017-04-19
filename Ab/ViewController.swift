//
//  ViewController.swift
//  Ab
//
//  Created by a on 4/12/17.
//  Copyright © 2017 a. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var prevbutt: UIButton!
    var stringo = String()
    var arr = [1,2,3,4,5,6,7,8,1,2,3,4,5,6,7,8]
    
    @IBAction func click(_ sender: UIButton) {
        if(stringo.isEmpty){
            prevbutt = sender
           let a = sender.tag
            stringo = String(arr[a])
           sender.setTitle(stringo, for: .normal)
            
            
        }else{
            if(sender != prevbutt){
            let bit = sender
            sender.setTitle(String(arr[bit.tag]), for: .normal)
            let when = DispatchTime.now() + 2 // change 2 to desired number of seconds
            DispatchQueue.main.asyncAfter(deadline: when) {
               
            
            if(self.arr[bit.tag] == self.arr[self.prevbutt.tag]){
                bit.isHidden = true
                
                self.prevbutt.isHidden = true
                
                
                
            }else{
                bit.setTitle("Button", for: .normal)
                self.prevbutt.setTitle("Button", for: .normal)
                
                
                }
                self.stringo = String()}}
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in (1...15).reversed(){
            let inii = i + 1
          let index =  Int(arc4random_uniform(UInt32(inii)))
            let a = arr[index];
            arr[index] = arr[i];
            arr[i] = a;
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

