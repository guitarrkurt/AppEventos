//
//  ConferenciasViewController.swift
//  Evento
//
//  Created by guitarrkurt on 20/05/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

class ConferenciasViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
//MARK: - Arrays
    let arrayConferencias = ["conferencias", "conferencias", "conferencias", "conferencias", "conferencias", "conferencias", "conferencias", "conferencias", "conferencias", "conferencias", "conferencias", "conferencias"]
//MARK: - Outlets
    @IBOutlet weak var burguerButton: UIBarButtonItem!
    @IBOutlet weak var collectionView: UICollectionView!
//MARK: - Constructor
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
        return arrayConferencias.count
    }
    
    internal func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as!CollectionViewCell
        cell.imagen.image = UIImage(named: arrayConferencias[indexPath.item])
        
        return cell
    }
    
    /*Las Celdas ocupen la mitad de la pantalla*/
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: UIScreen.mainScreen().bounds.width/2, height: UIScreen.mainScreen().bounds.width/2)
    }
    
    internal func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath){
        performSegueWithIdentifier("conferenciasvistadetalladaidentifier", sender: self)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "conferenciasvistadetalladaidentifier"{
            
        }
    }

}
