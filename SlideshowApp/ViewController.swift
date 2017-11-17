//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 別府優介 on 2017/11/14.
//  Copyright © 2017年 別府優介. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var slide: Timer!
    
    let imagea = UIImage(named: "IMG_5867.JPG")
    
    let imageb = UIImage(named: "IMG_5868.JPG")
    
    
    let imagec = UIImage(named: "IMG_5869.JPG")
    
    
    @IBOutlet weak var bNext: UIButton!
    @IBOutlet weak var bPrev: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        imageView.image = imagea
       
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        
        //let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        //resultViewController.i = imageView.image
    //}
    
    
    @IBAction func viewNext(_ sender: Any) {
        if imageView.image == imagea{
            imageView.image = imageb
        }
        else if imageView.image == imageb{
            imageView.image = imagec
        }
        else{
            imageView.image = imagea
        }
    }
    
    
    @IBAction func viewPrev(_ sender: Any) {
        if imageView.image == imagea{
            imageView.image = imagec
        }
        else if imageView.image == imagec{
            imageView.image = imageb
        }
        else{
            imageView.image = imagea
        }
    }
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    @IBAction func viewStart(_ sender: Any) {
        
        
        //ifで条件分岐したい。再生or停止
        if self.slide == nil{
        buttonLabel.setTitle("停止", for: .normal)
        self.slide = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(viewNext), userInfo: nil, repeats: true)
          
            bNext.isEnabled = false
            bPrev.isEnabled = false
            
        }
    
        else {
            buttonLabel.setTitle("再生", for: .normal)
            self.slide.invalidate()
            self.slide = nil
            
            bNext.isEnabled = true
            bPrev.isEnabled = true
            
            
        }
    
    }
        
       
    
    

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }

    
}

