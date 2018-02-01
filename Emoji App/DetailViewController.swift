//
//  DetailViewController.swift
//  Emoji App
//
//  Created by Fiona Hegarty on 1/31/18.
//  Copyright © 2018 Fiona Hegarty. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDetails: UILabel!
    var emoji = Emoji()
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji.stringEmoji
        emojiDetails.text = emoji.definition
        // data passed in from previous View Controller
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
