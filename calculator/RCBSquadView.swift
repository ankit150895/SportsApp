//
//  RCBSquadView.swift
//  calculator
//
//  Created by TryCatch Classes on 23/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class RCBSquadView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    //var playerInfo = [["Batsmen" : ["name" : "ABD"]], ["Bowler" : ["name" : "Tim Southee"]] [ "WK" : ["name" : "DeKock"]]]
    var batsmen = ["ABD" , "VK" , "Mandeep", "DeGrandhomme","Moeen Ali", "DeKock","Parthiv" ]
    var bowler = ["Southee" , "Umesh" , "Chahal"]
    var wkeeper = ["DeKock","Parthiv"]
    var allrounder = ["DeGrandhomme","Moeen Ali"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let a = batsmen.count
        return a
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "squadCell", for: indexPath) as! RCBSquadCell
        cell.squadImageView.layer.cornerRadius = cell.squadImageView.frame.height * 0.5
        cell.squadImageView.clipsToBounds = true
        cell.squadImageLabel.text = batsmen[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(20, 5, 20, 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.view.frame.width - 20) / 2, height: (self.view.frame.width - 20) / 2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let a = UIImageView()
        a.image = #imageLiteral(resourceName: "VKFloatImage")
        a.frame = CGRect(x: self.view.frame.width - 75, y: self.view.frame.height * 0.02, width: self.view.frame.width * 0.18, height: self.view.frame.width * 0.18)
        a.alpha = 1
        let b = UILabel(frame : CGRect(x: 0, y: 0, width: self.view.frame.width, height: (self.navigationController?.navigationBar.frame.height)!))
        b.text = "VK-The App"
        b.textAlignment = .center
        b.textColor = UIColor.white
        b.font = UIFont.boldSystemFont(ofSize: 20)
        self.navigationController?.navigationBar.addSubview(a)
        self.navigationController?.navigationBar.addSubview(b)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
