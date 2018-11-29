//
//  ViewController.swift
//  Side Menu
//
//  Created by bilal saygılı on 29.11.2018.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var viewConstraint: NSLayoutConstraint!
     @IBOutlet weak var sideMenu: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
          viewConstraint.constant = -197
    }
    
    @IBAction func openMenu(_ sender: Any) {
        viewConstraint.constant = 0
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    
    @IBAction func closeMenu(_ sender: Any) {
        viewConstraint.constant = -197
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }


}

