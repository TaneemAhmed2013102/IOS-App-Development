//
//  ViewController.swift
//  My Love
//
//  Created by Taneem Ahmed on 12/9/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
    @IBAction func switichToggleOn(_ sender: UISwitch) {
        if sender.isOn {
                myImage.image = #imageLiteral(resourceName: "us")
        } else {
            myImage.image = #imageLiteral(resourceName: "writhy")
        }
    }
    
}

