//
//  SobreNosotrosViewController.swift
//  Evento
//
//  Created by guitarrkurt on 20/05/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

class SobreNosotrosViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let array = ["historia", "mapa", "redessociales", "historia", "mapa", "redessociales", "historia", "mapa", "redessociales"]
    
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

    internal func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return array.count
    }

    internal func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("sobrenosotroscell", forIndexPath: indexPath) as! SobreNosotrosCollectionViewCell
        
        cell.imagen.image = UIImage(named: array[indexPath.item])
        
        return cell
    }
    
    
    internal func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath){
        performSegueWithIdentifier("sobrenosotrosdetalladacell", sender: self)
    }
    
    
    /*Las Celdas ocupen la mitad de la pantalla*/
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: UIScreen.mainScreen().bounds.width/2, height: UIScreen.mainScreen().bounds.width/2)
    }
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "sobrenosotrosdetalladacell"{
        
        }
    }
    

}
