//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 別府優介 on 2017/11/14.
//  Copyright © 2017年 別府優介. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var i = UIImage(named: "IMG_5867.JPG")

    
    @IBOutlet weak var viewZoom: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewZoom.image = i

        // Do any additional setup after loading the view.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
