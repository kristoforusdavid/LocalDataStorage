//
//  ViewController.swift
//  LocalDataStorage
//
//  Created by Kristoforus David on 07/01/20.
//  Copyright © 2020 Kristoforus David. All rights reserved.
//

import UIKit

//PLIST

class ViewController: UIViewController {

    @IBOutlet weak var wordTF: UITextField!
    @IBOutlet weak var wordLabel: UILabel!
    
    var userDef = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLabel.text = userDef.string(forKey: "word")
    }

    @IBAction func saveBtn(_ sender: Any) {
        userDef.set(wordTF.text, forKey: "word")
        wordLabel.text = wordTF.text
        
        let path:  [AnyObject] = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true) as [AnyObject]
        
        print(path)
    }
    
}

