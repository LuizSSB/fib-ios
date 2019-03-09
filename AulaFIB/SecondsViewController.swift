//
//  SecondsViewController.swift
//  AulaFIB
//
//  Created by Luiz SSB on 3/9/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import UIKit

class SecondsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftItemsSupplementBackButton = true

        // Do any additional setup after loading the view.
    }

    @IBAction func backModal(_ sender: Any) {
        dismiss(
            animated: true,
            completion: nil
        )
    }
    @IBAction func backNavigation(_ sender: Any) {
        
        navigationController?.popToViewController(
            navigationController!
                .viewControllers[0],
            animated: true
        )
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
