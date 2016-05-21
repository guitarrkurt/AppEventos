//
//  PatrocinadoresViewController.swift
//  Evento
//
//  Created by guitarrkurt on 20/05/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

class PatrocinadoresViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let array = ["favopatro1", "favopatro2", "favopatro3", "favopatro4", "favopatro5", "favopatro6"]
    
    @IBOutlet weak var burguerButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
            burguerButton.target = self.revealViewController()
            burguerButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    
        self.automaticallyAdjustsScrollViewInsets = false// Esta linea de codigo se pone porque xcode mueve nuestro UICollectionViewCell
    }
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return array.count
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("patrocinadorescell", forIndexPath: indexPath) as! PatrocinadoresTableViewCell
        cell.imagen.image = UIImage(named: array[indexPath.row])
        
        return cell
    }
    
    internal func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        performSegueWithIdentifier("patrocinadoresdetalladasidentifier", sender: self)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "patrocinadoresdetalladasidentifier"{
        
        }
    }
 

}
