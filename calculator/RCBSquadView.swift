//
//  RCBSquadView.swift
//  calculator
//
//  Created by TryCatch Classes on 23/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class RCBSquadView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var myCollectionView : UICollectionView!
    @IBOutlet weak var mySegment: UISegmentedControl!
    
    
    @IBAction func segmentPressed(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            allPlayers = wicketkeeper + batsmen + bowler + allrounder
            allPlayersPic = wicketkeeperPic + batsmenPic + bowlerPic + allrounderPic
            myCollectionView.reloadData()
        }
        if sender.selectedSegmentIndex == 1{
            allPlayers = batsmen
            allPlayersPic = batsmenPic
            myCollectionView.reloadData()
        }
        if sender.selectedSegmentIndex == 2{
            allPlayers = bowler
            allPlayersPic = bowlerPic
            myCollectionView.reloadData()
        }
        if sender.selectedSegmentIndex == 3{
            allPlayers = allrounder
            allPlayersPic = allrounderPic
            myCollectionView.reloadData()
        }
        if sender.selectedSegmentIndex == 4{
            allPlayers = wicketkeeper
            allPlayersPic = wicketkeeperPic
            myCollectionView.reloadData()
        }
    }
    
    //var playerInfo = [["Batsmen" : ["name" : "ABD"]], ["Bowler" : ["name" : "Tim Southee"]] [ "WK" : ["name" : "DeKock"]]]
    var batsmen = ["AB De Villiers" , "Virat Kohli" , "Mandeep Singh", "Manan Vohra", "Sarfaraz Khan", "Brendon Mccullum" , "Pavan Deshpande" ]
    var bowler = ["Umesh Yadav", "Tim Southee" , "Yuzvendra Chahal", "Mohd Siraj", "Murugan Ashwin", "Navdeep Saini", "Kulwant Khejroliya", "Aniket Choudhary"]
    var wicketkeeper = ["Quinton De Kock", "Parthiv Patel"]
    var allrounder = ["Colin De Grandhomme", "Moeen Ali", "Washington Sundar", "Corey Anderson", "Pawan Negi", "Chris Woakes", "Anirudha Joshi"]
    
    var allPlayers : [String] = Array()
    var allPlayersPic : [UIImage] = Array()
    
    var batsmenPic = [ #imageLiteral(resourceName: "ABDeVilliers.png") ,#imageLiteral(resourceName: "ViratKohli.jpg") ,#imageLiteral(resourceName: "MandeepSingh.jpg") ,#imageLiteral(resourceName: "MananVohra.jpg") ,#imageLiteral(resourceName: "SarfarazKhan.jpg") ,#imageLiteral(resourceName: "BrendonMccullum.jpg") ,#imageLiteral(resourceName: "PavanDeshpande.jpg") ]
    var bowlerPic = [ #imageLiteral(resourceName: "UmeshYadav.jpg") , #imageLiteral(resourceName: "TimSouthee.png"), #imageLiteral(resourceName: "YuzvendraChahal.jpg"), #imageLiteral(resourceName: "MohdSiraj.jpg"), #imageLiteral(resourceName: "MuruganAshwin.jpg"), #imageLiteral(resourceName: "NavdeepSaini.jpg"), #imageLiteral(resourceName: "KulwantKhejroliya.jpg"), #imageLiteral(resourceName: "AniketChoudhary.jpg") ]
    var wicketkeeperPic = [ #imageLiteral(resourceName: "QuintonDeKock.png"), #imageLiteral(resourceName: "ParthivPatel.jpg") ]
    var allrounderPic = [ #imageLiteral(resourceName: "ColinDeGrandhomme.png"), #imageLiteral(resourceName: "MoeenAli.png"), #imageLiteral(resourceName: "WashingtonSundar.jpg"), #imageLiteral(resourceName: "CoreyAnderson.png"), #imageLiteral(resourceName: "PawanNegi.jpg"), #imageLiteral(resourceName: "ChrisWoakes.png"), #imageLiteral(resourceName: "AnirudhaJoshi.jpg") ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allPlayers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "squadCell", for: indexPath) as! RCBSquadCell
        cell.squadImageView.layer.cornerRadius = cell.squadImageView.frame.height * 0.5
        cell.squadImageView.clipsToBounds = true
        cell.squadImageLabel.numberOfLines  = 2
        cell.squadImageView.image = allPlayersPic[indexPath.item]
        cell.squadImageLabel.text = allPlayers[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(20, 5, 20, 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.view.frame.width - 20)/2, height: (self.view.frame.width - 20)/2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allPlayers = wicketkeeper + batsmen + bowler + allrounder
        allPlayersPic = wicketkeeperPic + batsmenPic + bowlerPic + allrounderPic
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
