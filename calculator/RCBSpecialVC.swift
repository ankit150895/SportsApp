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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagelabel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "rcbCell", for: indexPath) as! RCBCVCell
        cell.imageLabel.text = imagelabel[indexPath.item]
        cell.imageLabel.layer.cornerRadius = 25
        cell.imageLabel.clipsToBounds = true
        cell.backgroundColor = collectionView.backgroundColor
        if indexPath.item == 0{
            cell.imageView.image = #imageLiteral(resourceName: "versus.png")
        }
        if indexPath.item == 1{
            cell.imageView.image = #imageLiteral(resourceName: "Squad")
        }
        if indexPath.item == 2{
            cell.imageView.image = #imageLiteral(resourceName: "gallery.png")
        }
        if indexPath.item == 3{
            cell.imageView.image = #imageLiteral(resourceName: "Slogan.jpg")
        }
          cell.imageView.layer.cornerRadius = cell.imageView.frame.width * 0.5
          cell.imageView.clipsToBounds = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.view.frame.width - 40) / 2, height: (self.view.frame.width - 40) / 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(20, 10, 20, 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.item == 0 {
            let vc = storyboard?.instantiateViewController(withIdentifier: "FixturesViewController") as! UINavigationController
            self.present(vc, animated: true, completion: nil)
        }
        else if indexPath.item == 1{
            let vc = storyboard?.instantiateViewController(withIdentifier: "RCBSquadView") as! UINavigationController
            self.present(vc, animated: true, completion: nil)
        }
        else if indexPath.item == 2 {
            let vc = storyboard?.instantiateViewController(withIdentifier: "DataCollectionView") as! UINavigationController
            self.present(vc, animated: true, completion: nil)
            link = "http://mapi.trycatchtech.com/v1/virat_kohli/rcb_images_list?page=1"
        } else{
            print("Nothing")
        }

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
