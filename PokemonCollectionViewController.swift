//
//  PokemonCollectionViewController.swift
//  PokeFinder
//
//  Created by Fnu, Rohit on 10/6/16.
//  Copyright © 2016 Fnu, Rohit. All rights reserved.
//

import UIKit

class PokemonCollectionViewController: UIViewController,  UICollectionViewDataSource, UICollectionViewDelegate {
    
    var copiedArray: NSArray = NSArray()
    let json: ViewController = ViewController() //Create object of ParseJson
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard

    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       // copiedArray = json.pokemon as NSArray        //access class variables


        return self.copiedArray.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      //  copiedArray = json.pokemon as NSArray        //access class variables

        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! PokeCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.myLabel.text = self.copiedArray[indexPath.item] as? String
        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }
    
    @IBAction func doneButton_TouchupInside(_ sender: AnyObject)
    {
       
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
