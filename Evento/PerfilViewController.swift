//
//  PerfilViewController.swift
//  Evento
//
//  Created by guitarrkurt on 20/05/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController {

    @IBOutlet weak var burguerMenu: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            burguerMenu.target = self.revealViewController()
            burguerMenu.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
