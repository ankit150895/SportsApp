//
//  SecondContainerViewController.swift
//  calculator
//
//  Created by Ankit Tanna on 21/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class SecondContainerViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var battingCareerLbl: UILabel!
    @IBOutlet weak var fillerLBL1: UILabel!
    @IBOutlet weak var bowlingCareerLbl: UILabel!
    @IBOutlet weak var fillerLBL2: UILabel!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var SfirstLabel: UILabel!
    @IBOutlet weak var SsecondLabel: UILabel!
    @IBOutlet weak var SthirdLabel: UILabel!
    @IBOutlet weak var SfourthLabel: UILabel!
    @IBOutlet weak var firstTableView: UITableView!
    @IBOutlet weak var secondTableVIew: UITableView!
    var arrayTitle = ["M","Inn","NO","Runs","HS","Avg","BF","SR","100","200","50","4s","6"]
    var detailone = ["66","112","8","5554","243","53.4","9532","58.27","21","6" ,"16","618","17"]
    var detailsTwo = ["208","200","35","9588","183","58.11","10405","92.15","35","0","46","893","105"]
    var detailsThree = ["57","53","14","1983","90","50.85","1444","137.33","0","0","18","210","41"]
    var detailsFour = ["163","155","26","4948","113","38.36","3784","130.76","4","0","34","434","177"]
    var SarrayTitle = ["M","Inn","B","Runs","WKTs","BBI","BBM","ECON","AVG","SR","5W","10W"]
    var Sdetailone = ["66","9","163","76","0","0/0","0/0","2.8","0.0","0.0","0","0"]
    var SdetailsTwo = ["208","48","641","665","4","15/1","15/1","6.22","166.25","160.25","0","0"]
    var SdetailsThree = ["57","12","146","198","4","13/1","13/1","8.14","49.5","36.5","0","0"]
    var SdetailsFour = ["163","26","251","368","4","25/2","25/2","8.8","92.0","62.75","0","0"]
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == firstTableView {
        return arrayTitle.count
        }
        else if tableView == secondTableVIew {
            return SarrayTitle.count
        }
        else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellToReturn = UITableViewCell()
        if tableView == firstTableView{
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondControllerCell") as! SecondControllerTableViewCell
        cell.myLabel.text = arrayTitle[indexPath.row]
        cell.firstLabel.text = detailone[indexPath.row]
        cell.secondLabel.text = detailsTwo[indexPath.row]
        cell.thirdLabel.text = detailsThree[indexPath.row]
        cell.fourthLabel.text = detailsFour[indexPath.row]
            var myArrayOfLabel = [cell.firstLabel,cell.secondLabel,cell.thirdLabel,cell.fourthLabel,cell.myLabel]
            for i in 0...(myArrayOfLabel.count)-1 {
                myArrayOfLabel[i]?.textColor = UIColor.white
                myArrayOfLabel[i]?.backgroundColor = UIColor.lightGray
                myArrayOfLabel[i]?.font = UIFont.boldSystemFont(ofSize: 18)
                myArrayOfLabel[i]?.textAlignment = .center
                myArrayOfLabel[i]?.layer.cornerRadius = 10
                myArrayOfLabel[i]?.clipsToBounds = true
                }
            cellToReturn = cell
        }
        else if tableView == secondTableVIew {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondControllerSecondCell") as! SecondControllerSecondTableViewCell
            cell.categoryLabel.text = SarrayTitle[indexPath.row]
            cell.firstDetail.text = Sdetailone[indexPath.row]
            cell.secondDetail.text = SdetailsTwo[indexPath.row]
            cell.thirdDetail.text = SdetailsThree[indexPath.row]
            cell.fourthDetail.text = SdetailsFour[indexPath.row]
            var myArrayOfLabel = [cell.firstDetail,cell.secondDetail,cell.thirdDetail,cell.fourthDetail,cell.categoryLabel]
            for i in 0...(myArrayOfLabel.count)-1 {
                myArrayOfLabel[i]?.textColor = UIColor.white
                myArrayOfLabel[i]?.backgroundColor = UIColor.lightGray
                myArrayOfLabel[i]?.font = UIFont.boldSystemFont(ofSize: 18)
                myArrayOfLabel[i]?.textAlignment = .center
                myArrayOfLabel[i]?.layer.cornerRadius = 10
                myArrayOfLabel[i]?.clipsToBounds = true
            }
            cellToReturn = cell
        }
        
        return cellToReturn
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabel.text = "TEST"
        secondLabel.text = "ODI"
        thirdLabel.text = "T20"
        fourthLabel.text = "IPL"
        SfirstLabel.text = "TEST"
        SsecondLabel.text = "ODI"
        SthirdLabel.text = "T20"
        SfourthLabel.text = "IPL"
        battingCareerLbl.text = "Batting Career Summary"
        bowlingCareerLbl.text = "Bowling Career Summary"
        var myArrayofLabel = [firstLabel,secondLabel,thirdLabel,fourthLabel,SfirstLabel,SsecondLabel,SthirdLabel,SfourthLabel,battingCareerLbl,bowlingCareerLbl]
        for i in 0...(myArrayofLabel.count)-1 {
            myArrayofLabel[i]?.textColor = UIColor.white
            if myArrayofLabel[i] == battingCareerLbl || myArrayofLabel[i] == bowlingCareerLbl {
                myArrayofLabel[i]?.font = UIFont.boldSystemFont(ofSize: 22)
                myArrayofLabel[i]?.textAlignment = .left
                myArrayofLabel[i]?.layer.cornerRadius = 15
                myArrayofLabel[i]?.clipsToBounds = true
                myArrayofLabel[i]?.backgroundColor = UIColor.darkGray
            }
            else {
                myArrayofLabel[i]?.font = UIFont.boldSystemFont(ofSize: 17)
                myArrayofLabel[i]?.textAlignment = .center
                myArrayofLabel[i]?.backgroundColor = UIColor.lightGray
            }
            fillerLBL1.backgroundColor = UIColor.lightGray
            fillerLBL2.backgroundColor = UIColor.lightGray
            fillerLBL1.isHidden = true
            fillerLBL2.isHidden = true
        }
        
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
