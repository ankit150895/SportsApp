//
//  FourthContainerViewController.swift
//  calculator
//
//  Created by Ankit Tanna on 21/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class FourthContainerViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let mySectionHeading = ["Fastest Century","Milestones","Most runs in a calendar year / series","Captaincy records"]
    let mySectionContent = ["\u{2022} Fastest century by an Indian cricketer in ODIs (in 52 balls).","\u{2022} Fastest Indian to reach 1,000 runs in ODIs.\n\n\u{2022} Fastest Indian and third fastest in the world to reach 5,000 runs in ODIs.\n\n\u{2022} Fastest Indian and second fastest in the world to reach 6,000 runs in ODIs.\n\n\u{2022} Fastest Indian and second fastest in the world to reach 7,000 runs in ODIs.\n\n\u{2022} Fastest player to reach 8,000 runs in ODIs.\n\n\u{2022} Fastest player to reach 9,000 runs in ODIs.\n\n\u{2022} Fastest Indian and second fastest in the world to reach 10 centuries in ODIs.\n\n\u{2022} Fastest Indian and second fastest in the world to reach 15 centuries in ODIs.\n\n\u{2022} Fastest Indian and second fastest in the world to reach 20 centuries in ODIs.\n\n\u{2022} Fastest Indian and second fastest in the world to reach 25 centuries in ODIs.\n\n\u{2022} Fastest in the world to reach 30 centuries in ODIs.\n\n\u{2022} Fastest in the world to reach 35 centuries in ODIs.\n\n\u{2022} Fastest in the world to reach 1,000 runs in T20Is.\n\n\u{2022} Fastest in the world to reach 15,000 international runs.\n\n\u{2022} Joint fastest batsman with Hashim Amla to reach 50 centuries across all forms of international cricket (348 innings).\n\n\u{2022} Only batsman in history to average more than 50 in Test matches, ODIs and T20Is simultaneously; also possesses the highest combined average across all formats among Test players who have played in at least two formats.\n\n\u{2022} Highest historic rating points by an Indian batsman in ODIs (909 points), achieved on 16 February 2018, and T20Is (897 points), achieved on 7 September 2014, in ICC rankings.\n\n\u{2022} Fastest player, in terms of innings, to score 17,000 runs in international cricket (363). \n\n\u{2022} He holds the rare feat of crossing 900 ratings points in ICC rankings in both Tests and ODIs - one among five batsmen to have done so - and only the second batsman after AB de Villiers to do it simultaneously. \n\n\u{2022} First batsman to score 500 runs in a bilateral ODI series.","\u{2022} Most ODI runs in 2010 by an Indian cricketer.\n\n\u{2022} Most ODI runs in 2011 by any cricketer.\n\n\u{2022} Most ODI runs in 2012 by an Indian cricketer.\n\n\u{2022} Most ODI runs in 2013 by an Indian cricketer.\n\n\u{2022} Most ODI runs in 2014 by an Indian cricketer.\n\n\u{2022} Most ODI runs in 2016 by an Indian cricketer.\n\n\u{2022} Most Test runs in 2012 by an Indian cricketer.\n\n\u{2022} Most Test runs in 2015 by an Indian cricketer.\n\n\u{2022} Most Test runs in 2016 by an Indian cricketer.\n\n\u{2022} Most combined international runs scored in a year by an Indian – 2818 international runs in 2017.\n\n\u{2022} Highest run scorer by an Indian in a three-match Test series – 610 runs against Sri Lanka in 2017.\n\n\u{2022}Most ODI runs in 2017 by any cricketer.\n\n\u{2022}Most runs in a bilateral ODI series by a player - 558 runs against South Africa in 2018.","\u{2022} Most consecutive Test series win (9) as a captain from 2015–2017 (equal with Ricky Ponting from 2005–2008).\n\n\u{2022} First cricketer to score three centuries in his first three innings as Test captain. He is also the second Test captain to score centuries in his first two Test innings after Greg Chappell.\n\n\u{2022} First Indian Test captain to score a double century overseas.\n\n\u{2022} First Indian Test captain to score two or more double centuries.\n\n\u{2022} Fastest captain to score 1000 ODI runs.\n\n\u{2022}First ever batsman to score double centuries in four \n\n\u{2022} First Indian captain to score a hundred and a duck in the same Test.\n\n\u{2022} First captain to score 10 international hundreds in a calendar year.\n\n\u{2022} Most Test centuries as a captain of India (12).\n\n\u{2022} Most double centuries by a captain in Test cricket (6).\n\n\u{2022} Most centuries (11) by a captain in a calendar year (2017).\n\n\u{2022} Most runs as captain of India in Tests .\n\n\u{2022} Most ODI centuries as a captain of India (13)."]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return mySectionHeading.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FourthContainerCell") as! FourthContainerTableViewCell
        cell.myLabel.text = mySectionContent[indexPath.section]
        cell.myLabel.numberOfLines = 0
        cell.myLabel.textColor = UIColor.white
        cell.myLabel.font = UIFont.boldSystemFont(ofSize: 18)
        cell.myLabel.backgroundColor = UIColor.lightGray
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return mySectionHeading[section]
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
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
