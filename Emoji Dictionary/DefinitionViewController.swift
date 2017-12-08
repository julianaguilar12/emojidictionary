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
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    
    var emoji = Emoji()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji.name
        categoryLabel.text = emoji.category
        definitionLabel.text = emoji.definition
        birthYearLabel.text = "Birth Year: \(emoji.birthYear)"
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
