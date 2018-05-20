//
//  RCBSpecialVC.swift
//  calculator
//
//  Created by Apple on 20/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class RCBSpecialVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    
    var imagelabel = ["Fixtures", "Squad" , "Gallery", "Slogan"]
   // var images = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagelabel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "rcbCell", for: indexPath) as! RCBCVCell
        cell.imageLabel.text = imagelabel[indexPath.item]
        cell.backgroundColor = collectionView.backgroundColor
        cell.imageView.layer.cornerRadius = cell.imageView.frame.width * 0.5
       
        cell.imageView.backgroundColor = UIColor.red
        cell.imageView.clipsToBounds = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.height * 0.25, height: self.view.frame.height * 0.25)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(20, 10, 20, 10)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
