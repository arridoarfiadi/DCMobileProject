//
//  pow.swift
//  DiversityCenter
//
//  Created by Arrido Arfiadi on 5/31/18.
//  Copyright © 2018 Arrido Arfiadi. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class pow: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
    
    @IBAction func signout(_ sender: UIBarButtonItem) {
        let loginManager = FBSDKLoginManager()
        loginManager.logOut()
        self.performSegue(withIdentifier: "signout", sender: self)
    }
    
    let reuseIdentifier = "cell"
    var religion = ["Islam", "Evangelical", "Buddhist","Sikh", "Hindu", "Jewish", "Episcopal","Greek Orthodox", "Salvation Army","Seventh Day Adventists","United Church of Christ", "United Methodist", "Unitarian Univeralist", "Roman Catholic", "Presbyterian", "Lutheran", "American Baptist", "Christian Science"]
    var currentSelectedGroup: IndexPath?
    

    @IBOutlet weak var collectionView: UICollectionView!
    
   

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.religion.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! controllerViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.label.text = self.religion[indexPath.item]
        
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        
        
        return cell

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let cell = sender as? UICollectionViewCell,
            let indexPath = self.collectionView.indexPath(for: cell) {
    
            let vc = segue.destination as! MapView //Cast with your DestinationController
            //Now simply set the title property of vc
            vc.selected = indexPath.row
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        // Do any additional setup after loading the view.
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
