//
//  FirstViewController.swift
//  AulaFIB
//
//  Created by Luiz SSB on 3/9/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Primeiro"
        navigationItem.prompt = "Subtítulo"
        navigationItem.leftBarButtonItem =
            UIBarButtonItem(
                barButtonSystemItem: .add,
                target: self,
                action: #selector(doStuff)
        )
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(
                title: "Direito",
                style: .done,
                target: nil,
                action: nil
            ),
            UIBarButtonItem(
                title: "Esquerdo",
                style: .plain,
                target: nil,
                action: nil
            ),
        ]
    }
    
    @objc
    func doStuff() {
        print("click")
    }

    @IBAction func openModal(_ sender: Any) {
        let secondViewController =
            SecondsViewController()
        secondViewController
            .modalTransitionStyle =
                .flipHorizontal
        present(secondViewController,
                animated: true,
                completion: nil
        )
    }
    @IBAction func nextNavigation(_ sender: Any) {
        navigationController?.pushViewController(
            SecondsViewController(),
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
