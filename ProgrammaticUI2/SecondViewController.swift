//
//  SecondViewController.swift
//  ProgrammaticUI2
//
//  Created by Kwan Ho Leung on 23/5/2022.
//

import UIKit

class SecondViewController: UIViewController {

    var successLabel:UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .yellow
        self.view.addSubview(successLabel)
        successLabel.translatesAutoresizingMaskIntoConstraints = false
        successLabel.text = "Success"
        successLabel.font = UIFont(name: "GillSans-Bold", size: 80)
        successLabel.centerXAnchor.constraint(
            equalTo: self.view.centerXAnchor).isActive = true
        successLabel.centerYAnchor.constraint(
            equalTo: self.view.centerYAnchor).isActive = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
