//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Julian Aguilar on 12/7/17.
//  Copyright © 2017 Julian Aguilar. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
