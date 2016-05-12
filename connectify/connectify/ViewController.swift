//
//  ViewController.swift
//  connectify
//
//  Created by Maryum Styles on 4/11/16.
//  Copyright © 2016 Maryum Styles. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    var contacts = [Contact]()
    let contact1 = Contact(firstName: "Johnny", lastName: "Smith", phoneNumber: "3408672345")
    let contact2 = Contact(firstName: "Suzie", lastName: "Smith", phoneNumber: "3428673340")
    let contact3 = Contact(firstName: "Arthur", lastName: "Jones", phoneNumber: "1508647345")
    
    func loadContacts(){
    contacts+=[contact1!,contact2!,contact3!]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadContacts()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let reuseIdentifier = "contactCell" 
 
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.contacts.count
    }
    
    // make a cell for each cell index path
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let contact = contacts[indexPath.row]
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! ContactCollectionViewCell
        
        cell.populateWithContact(contact)
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
//        cell..text = self.items[indexPath.item]
        cell.backgroundColor = UIColor.blueColor() // make cell more visible in our example project
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
        //open modal
    }


}

