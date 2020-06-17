//
//  NextViewController.swift
//  RUdeleg-protc
//
//  Created by 中塚富士雄 on 2020/06/15.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import UIKit

protocol CatchProtocol {
    
    func catchData(count:Int)
        
}

class NextViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    var count:Int = 0
    
    var delegate:CatchProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func plusAction(_ sender: Any) {
        
        count = count + 1
        countLabel.text = String(count)
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        delegate?.catchData(count: count)
        
        dismiss(animated: true, completion: nil)
        
        
    }
    
}
