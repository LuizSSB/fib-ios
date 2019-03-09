//
//  ViewController.swift
//  AulaFIB
//
//  Created by Luiz SSB on 2/23/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var grayLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var mainTextLabel: UILabel!
    @IBAction func onButtonClick() {
        mainTextLabel.text =
            //arc4random().description
            String(arc4random())
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        var vflConstraints = NSLayoutConstraint.constraints(
            withVisualFormat: "|-[grayLabel(==120)]-[redLabel]-|",
            options: .alignAllFirstBaseline,
            metrics: nil,
            views: [
                "redLabel": redLabel,
                "grayLabel": grayLabel
            ]
        )
        let topGrayLabel = NSLayoutConstraint(
            item: grayLabel,
            attribute: .top,
            relatedBy: .equal,
            toItem: view,
            attribute: .top,
            multiplier: 1,
            constant: 173
        )
        let topRedLabel = NSLayoutConstraint(
            item: redLabel,
            attribute: .top,
            relatedBy: .equal,
            toItem: grayLabel,
            attribute: .top,
            multiplier: 1,
            constant: 0
        )
        vflConstraints.append(topGrayLabel)
        vflConstraints.append(topRedLabel)
        redLabel.translatesAutoresizingMaskIntoConstraints = false
        grayLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints(vflConstraints)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

