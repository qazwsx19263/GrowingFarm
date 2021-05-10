//
//  ViewController.swift
//  growingFarm
//
//  Created by Michael on 2021/4/16.
//  Copyright © 2021 Michael. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    var peopleText:String!
    var peopleColor:UIColor!
    @IBAction func segueToLogin(_ sender: UIButton) {
        if(sender.accessibilityLabel=="customer"){
            peopleText="民眾登入"
            peopleColor=#colorLiteral(red: 0.8703275323, green: 0.9357070327, blue: 0.9039972425, alpha: 1)
        }
        if(sender.accessibilityLabel=="farmer"){
            peopleText="農家登入"
            peopleColor=#colorLiteral(red: 0.8185235262, green: 0.9557378888, blue: 1, alpha: 1)
        }
        self.performSegue(withIdentifier: "segueLogin", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let loginVC = segue.destination as! LoginVC
            loginVC.People = peopleText // someValue.text
            loginVC.view.backgroundColor=peopleColor
      }
//    @IBAction override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
//    }
}

