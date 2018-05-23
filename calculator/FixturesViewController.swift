//
//  FixturesViewController.swift
//  calculator
//
//  Created by Ankit Tanna on 23/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class FixturesViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var FixturesLabel: UILabel!
    var myMatchesArray = ["RCB vs KKR","RCB vs KXIP","RCB vs RR","RCB vs MI","RCB vs DD","RCB vs CSK","RCB vs KKR","RCB vs MI","RCB vs CSK","RCB vs SRH","RCB vs DD","RCB vs KXIP","RCB vs SRH","RCB vs RR"]
    var myOpp = [#imageLiteral(resourceName: "KKR"),#imageLiteral(resourceName: "Kings11"),#imageLiteral(resourceName: "RR"),#imageLiteral(resourceName: "MI"),#imageLiteral(resourceName: "Delhi"),#imageLiteral(resourceName: "CSK"),#imageLiteral(resourceName: "KKR"),#imageLiteral(resourceName: "MI"),#imageLiteral(resourceName: "CSK"),#imageLiteral(resourceName: "HYD 1"),#imageLiteral(resourceName: "Delhi"),#imageLiteral(resourceName: "Kings11"),#imageLiteral(resourceName: "HYD 1"),#imageLiteral(resourceName: "RR")]
    var matchDateArray = ["8th April","13th April","15th April","17th April","21st April","25th April","29th April","1st May","5th May","7th May","12th May","14th May","17th May","19th May"]
    var matchTime = ["8:00 PM","8:00 PM","4.00 PM","8.00 PM","8.00 PM","8.00 PM","8.00 PM","8.00 PM","4.00 PM","8.00 PM","8.00 PM","8.00 PM","8.00 PM","4.00 PM"]
    var venue = ["Eden Gardens","M.Chinnaswamy Stadium","M.Chinnaswamy Stadium","Wankhede Stadium","M. Chinnaswamy Stadium","M.Chinnaswamy Stadium","M.Chinnaswamy Stadium","M.Chinnaswamy Stadium","Maharashtra Cricket Association Stadium","Rajiv Gandhi Into Stadium","Feroz Shah Kotla","Holkar Stadium","M.Chinnaswamy Stadium","Sawai Mansingh Stadium"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myMatchesArray.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.height * 0.22
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FixtureCell") as! FixturesTableViewCell
        cell.leftImgView.image = #imageLiteral(resourceName: "RCB")
        cell.detailLabel.text = "Match No.\(indexPath.row+1)\n\(myMatchesArray[indexPath.row])\n\(matchDateArray[indexPath.row])\t\(matchTime[indexPath.row])\n\(venue[indexPath.row])"
        cell.detailLabel.font = UIFont.boldSystemFont(ofSize: 20)
        cell.detailLabel.textAlignment = .center
        cell.detailLabel.numberOfLines = 0
        cell.rightImgView.image = myOpp[indexPath.row]
        FixturesLabel.text = "Fixtures"
        FixturesLabel.font = UIFont.boldSystemFont(ofSize: 24)
        FixturesLabel.textColor = UIColor.white
        FixturesLabel.backgroundColor = UIColor.darkGray
        FixturesLabel.textAlignment = .center
        return cell
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
