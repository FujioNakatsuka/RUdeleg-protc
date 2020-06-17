//
//  ViewController.swift
//  RUdeleg-protc
//
//  Created by 中塚富士雄 on 2020/06/15.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CatchProtocol {
 
    @IBOutlet weak var countLabel: UILabel!
    
    var count = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func catchData(count: Int) {
        countLabel.text = String(count)
     }
    
    @IBAction func next(_ sender: Any) {
        
        performSegue(withIdentifier: "next", sender: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! NextViewController
        
        nextVC.delegate = self
        
    }
    
}

