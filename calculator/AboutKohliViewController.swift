//
//  AboutKohliViewController.swift
//  calculator
//
//  Created by Ankit Tanna on 14/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit
import SideMenu
import Segmentio
var Heading2 = "Grind through the ranks"
var heading3 = "Cementing a national sport"
class AboutKohliViewController: UIViewController {
    @IBOutlet weak var ScrollView : UIScrollView!
    @IBOutlet weak var SegmentioView : Segmentio!
    @IBOutlet weak var TitleLabel : UILabel!
    
   
    @objc func segmentSelected(segmentNo : Int){
        if segmentNo == 0 {
            ScrollView.reloadInputViews()
            let ViratDesc1 = "A spunky, chubby teenager with gelled hair shot to fame after leading India to glory in the Under-19 World Cup at Kuala Lumpur in early 2008. In an Indian team filled with saint-like icons worthy of their own hagiographies, Virat Kohli, with his most un-Indian, 'bad-boy' intensity, would clearly be an outcast."
            let ViratDesc2 = "He soon joined the senior Men in Blue in Sri Lanka, come August 2008. In the absence of the regular openers, Virat Kohli was given a chance to open the batting in the ODI series. He played some commendable knocks in his extended run as an opener, as India went on to win the ODI series. However, the established and formidable pair of Tendulkar and Sehwag kept Kohli out of the team.\n\nThe 20-year-old continued to impress for Delhi and dominated attacks, clearly demonstrating that he belonged at a much higher level; that junior cricket was beneath his standards. Kohli then traveled to Australia in 2009 for the Emerging players tournament and stamped his authority all over the bowling attacks. He added 'big-match temperament' to his résumé too, lacing a fluent hundred in the final against South Africa, and guiding his team to a clinical victory. The young prodigy, barely old enough to receive his man-of-the-match champagne, ended the tournament with 398 runs from 7 outings with two centuries and two fifties, ensuring that he remained fresh in the selectors' minds."
            let ViratDesc3 = "The selectors had no choice but to give Kohli another go in the Indian side, and this time he strung together a number of impressive scores. After being given an extended run, he repaid their faith by notching up his maiden ODI hundred in an impressive run-chase against Sri Lanka in December 2009 - his first of many exemplary knocks in run-chases. In the World Cup final of 2011, the biggest stage of them all, Kohli, along with his Delhi teammate Gautam Gambhir, pulled off a largely underrated rescue effort with an 83-run stand after losing the openers early. This knock played a crucial role in setting the platform for MS Dhoni's fabled knock of 91*, which eventually won India the World Cup on that enchanting evening in Mumbai.\n\nIn the hangover of the World Cup euphoria, Kohli continued to take giant strides in the limited-overs format. Three years after his ODI debut, he was finally handed the coveted Test cap in the Caribbean islands in July 2011, owing to the need to rest the senior players. After a series each against the Dukes ball and the SG ball, it was now time for his trial against the Kookaburra Down Under. In the first two Tests, he seemed to lack the technique to play in Australia, maintaining his low stance on the bouncy tracks. He also had a rather restricting trigger movement with his front-foot routinely coming across towards off-stump, thereby hindering the necessary movement to play back-foot shots such as the pull and the cut. "
            let descView = UITextView()
            let myHeadingLabel = UILabel()
            let mySecondHeadingLabel = UILabel()
            let mySecondDescView = UITextView()
            let myThirdHeadingLabel = UILabel()
            let myThirdDescView = UITextView()
            myHeadingLabel.text = "\u{2022} Profile"
            myHeadingLabel.textColor = UIColor.white
            myHeadingLabel.font = UIFont.boldSystemFont(ofSize: 24)
            myHeadingLabel.backgroundColor = UIColor.lightGray
            ScrollView.addSubview(myHeadingLabel)
            myHeadingLabel.translatesAutoresizingMaskIntoConstraints = false
            let horizontalConstraintLabel = NSLayoutConstraint(item: myHeadingLabel, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let verticalConstraintLabel = NSLayoutConstraint(item: myHeadingLabel, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: SegmentioView, attribute: NSLayoutAttribute.bottom, multiplier: 1.05, constant: 0)
            let widthConstraintLabel = NSLayoutConstraint(item: myHeadingLabel, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let heightConstraintLabel = NSLayoutConstraint(item: myHeadingLabel, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.06, constant: 0)
            ScrollView.addConstraints([horizontalConstraintLabel,verticalConstraintLabel,widthConstraintLabel,heightConstraintLabel])
//            myHeadingLabel.clipsToBounds = true
//            myHeadingLabel.layer.cornerRadius = 15
//            Code for Descriptive Text View Starts here
            descView.isEditable = false
            descView.text = ViratDesc1
            descView.backgroundColor = UIColor.lightGray
            descView.font = UIFont.boldSystemFont(ofSize: 16)
            descView.textColor = UIColor.white
            
            ScrollView.addSubview(descView)
            descView.translatesAutoresizingMaskIntoConstraints = false
            let horizontalConstraint = NSLayoutConstraint(item: descView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let verticalConstraint = NSLayoutConstraint(item: descView, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: myHeadingLabel, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            let widthConstraint = NSLayoutConstraint(item: descView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let heightConstraint = NSLayoutConstraint(item: descView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.25, constant: 0)
//            let bottomContraint = NSLayoutConstraint(item: descView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: mySecondHeadingLabel, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([horizontalConstraint,verticalConstraint,widthConstraint,heightConstraint])
//            descView.clipsToBounds = true
//            descView.layer.cornerRadius = 15
//           Code for second heading
            mySecondHeadingLabel.text = "\u{2022} Grind through the ranks"
            mySecondHeadingLabel.font = UIFont.boldSystemFont(ofSize: 24)
            mySecondHeadingLabel.textColor = UIColor.white
            mySecondHeadingLabel.backgroundColor = UIColor.lightGray
            
            ScrollView.addSubview(mySecondHeadingLabel)
            mySecondHeadingLabel.translatesAutoresizingMaskIntoConstraints = false
            let horizontalConstraintSecondLabel = NSLayoutConstraint(item: mySecondHeadingLabel, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let verticalConstraintSecondLabel = NSLayoutConstraint(item: mySecondHeadingLabel, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: descView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            let widthConstraintSecondLabel = NSLayoutConstraint(item: mySecondHeadingLabel, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let heightConstraintSecondLabel = NSLayoutConstraint(item: mySecondHeadingLabel, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.06, constant: 0)
//            let bottomContraintSecondLabel = NSLayoutConstraint(item: mySecondHeadingLabel, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([horizontalConstraintSecondLabel,verticalConstraintSecondLabel,widthConstraintSecondLabel,heightConstraintSecondLabel])
//            Code for second Descriptive text
            mySecondDescView.isEditable = false
            mySecondDescView.text = ViratDesc2
            mySecondDescView.backgroundColor = UIColor.lightGray
            mySecondDescView.font = UIFont.boldSystemFont(ofSize: 16)
            mySecondDescView.textColor = UIColor.white
            
            ScrollView.addSubview(mySecondDescView)
            mySecondDescView.translatesAutoresizingMaskIntoConstraints = false
            let horizontalConstraintSecondDesV = NSLayoutConstraint(item: mySecondDescView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let verticalConstraintSecondDesV = NSLayoutConstraint(item: mySecondDescView, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: mySecondHeadingLabel, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            let widthConstraintSecondDesV = NSLayoutConstraint(item: mySecondDescView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let heightConstraintSecondDesV = NSLayoutConstraint(item: mySecondDescView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.7, constant: 0)
//            let bottomContraintSecondDesV = NSLayoutConstraint(item: mySecondDescView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([horizontalConstraintSecondDesV,verticalConstraintSecondDesV,widthConstraintSecondDesV,heightConstraintSecondDesV])
//        Code for Third Header Label
            myThirdHeadingLabel.text = "\u{2022} Cementing a national spot"
            myThirdHeadingLabel.textColor = UIColor.white
            myThirdHeadingLabel.font = UIFont.boldSystemFont(ofSize: 24)
            myThirdHeadingLabel.backgroundColor = UIColor.lightGray
            ScrollView.addSubview(myThirdHeadingLabel)
            myThirdHeadingLabel.translatesAutoresizingMaskIntoConstraints = false
            let horizontalConstraintThirdLabel = NSLayoutConstraint(item: myThirdHeadingLabel, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let verticalConstraintThirdLabel = NSLayoutConstraint(item: myThirdHeadingLabel, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: mySecondDescView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            let widthConstraintThirdLabel = NSLayoutConstraint(item: myThirdHeadingLabel, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let heightConstraintThirdLabel = NSLayoutConstraint(item: myThirdHeadingLabel, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.06, constant: 0)
//            let bottomContraintThirdLabel = NSLayoutConstraint(item: myThirdHeadingLabel, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([horizontalConstraintThirdLabel,verticalConstraintThirdLabel,widthConstraintThirdLabel,heightConstraintThirdLabel])
//            Code for Third Desc View
            myThirdDescView.isEditable = false
            myThirdDescView.text = ViratDesc3
            myThirdDescView.backgroundColor = UIColor.lightGray
            myThirdDescView.font = UIFont.boldSystemFont(ofSize: 16)
            myThirdDescView.textColor = UIColor.white
            
            ScrollView.addSubview(myThirdDescView)
            myThirdDescView.translatesAutoresizingMaskIntoConstraints = false
            let horizontalConstraintThirdDescV = NSLayoutConstraint(item: myThirdDescView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let verticalConstraintThirdDescV = NSLayoutConstraint(item: myThirdDescView, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: myThirdHeadingLabel, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            let widthConstraintThirdDescV = NSLayoutConstraint(item: myThirdDescView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let heightConstraintThirdDescV = NSLayoutConstraint(item: myThirdDescView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.9, constant: 0)
            let bottomContraintThirdDescV = NSLayoutConstraint(item: myThirdDescView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([horizontalConstraintThirdDescV,verticalConstraintThirdDescV,widthConstraintThirdDescV,heightConstraintThirdDescV,bottomContraintThirdDescV])
        } else if segmentNo == 1 {
            
        }
        else if segmentNo == 2 {
            ScrollView.reloadInputViews()
            let myOutSideCricketHead = UILabel()
            let myDashView = UIView()
            let myPersonalLife = UILabel()
            let myPersonalLifeImgView = UIImageView(frame: CGRect(x: ScrollView.frame.width-170, y: myOutSideCricketHead.frame.height+20, width: 150, height: 150))
            let myPersonalLifeDescV = UITextView()
            myOutSideCricketHead.text = "Outside Cricket"
            myOutSideCricketHead.textColor = UIColor.white
            myOutSideCricketHead.font = UIFont.boldSystemFont(ofSize: 24)
            myOutSideCricketHead.backgroundColor = UIColor.lightGray
            ScrollView.addSubview(myOutSideCricketHead)
            myOutSideCricketHead.translatesAutoresizingMaskIntoConstraints = false
            let myOutSideCricketHeadhorizontalConstraintLabel = NSLayoutConstraint(item: myOutSideCricketHead, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let myOutSideCricketHeadverticalConstraintLabel = NSLayoutConstraint(item: myOutSideCricketHead, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: SegmentioView, attribute: NSLayoutAttribute.bottom, multiplier: 1.05, constant: 0)
            let myOutSideCricketHeadwidthConstraintLabel = NSLayoutConstraint(item: myOutSideCricketHead, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let myOutSideCricketHeadheightConstraintLabel = NSLayoutConstraint(item: myOutSideCricketHead, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.06, constant: 0)
//            let myOutSideCricketHeadBottomConstraint = NSLayoutConstraint(item: myOutSideCricketHead, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([myOutSideCricketHeadhorizontalConstraintLabel,myOutSideCricketHeadverticalConstraintLabel,myOutSideCricketHeadwidthConstraintLabel,myOutSideCricketHeadheightConstraintLabel])
            //Code for myDashView
            myDashView.backgroundColor = UIColor.white
            myDashView.translatesAutoresizingMaskIntoConstraints = false
            ScrollView.addSubview(myDashView)
            let MYDashHorizontalConstraint = NSLayoutConstraint(item: myDashView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let MYDashVerticalConstraint = NSLayoutConstraint(item: myDashView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: myOutSideCricketHead, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            let myDashWidthConstraint = NSLayoutConstraint(item: myDashView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let MyDashHeightConstraint = NSLayoutConstraint(item: myDashView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.0035, constant: 0)
//            let myDashBottomConstraint = NSLayoutConstraint(item: myDashView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([MYDashHorizontalConstraint,MYDashVerticalConstraint,myDashWidthConstraint,MyDashHeightConstraint])
//            Code for my personal Life
            myPersonalLife.text = "Personal Life"
            myPersonalLife.textColor = UIColor.white
            myPersonalLife.font = UIFont.boldSystemFont(ofSize: 20)
            myPersonalLife.backgroundColor = UIColor.lightGray
            ScrollView.addSubview(myPersonalLife)
            myPersonalLife.translatesAutoresizingMaskIntoConstraints = false
            let myPersonalLifeHorizontalConstraint = NSLayoutConstraint(item: myPersonalLife, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let myPersonalLifeVerticalConstraint = NSLayoutConstraint(item: myPersonalLife, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: myDashView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            let myPersonalLifewidthConstraint = NSLayoutConstraint(item: myPersonalLife, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let myPersonalLifeheighConstraint = NSLayoutConstraint(item: myPersonalLife, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.05, constant: 0)
//            let myPersonalLifebottomConstraint = NSLayoutConstraint(item: myPersonalLife, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([myPersonalLifeHorizontalConstraint,myPersonalLifeVerticalConstraint,myPersonalLifewidthConstraint,myPersonalLifeheighConstraint])
//            Code for myPersonalLifeDescView and ImageView
            myPersonalLifeImgView.image = #imageLiteral(resourceName: "viratAnushka.jpg")
            ScrollView.addSubview(myPersonalLifeImgView)
            myPersonalLifeImgView.layer.cornerRadius = 75
            myPersonalLifeImgView.clipsToBounds = true
            myPersonalLifeImgView.translatesAutoresizingMaskIntoConstraints = false
            myPersonalLifeImgView.contentMode = .scaleAspectFit
//            let myPersonalLifeImgViewHorizontalConstraint = NSLayoutConstraint(item: myPersonalLifeImgView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
//            let myPersonalLifeImgViewVerticalConstraint = NSLayoutConstraint(item: myPersonalLifeImgView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: myPersonalLife, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
//            let myPersonalLifeImgViewWidthConstraint = NSLayoutConstraint(item: myPersonalLifeImgView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: myPersonalLifeImgView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 75)
//            let myPersonalLifeImgViewHeightConstraint = NSLayoutConstraint(item: myPersonalLifeImgView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: myPersonalLifeImgView, attribute: NSLayoutAttribute.height, multiplier: 1.0, constant: 75)
//            let myPersonalLifeImgViewBottomConstraint = NSLayoutConstraint(item: myPersonalLifeImgView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
//            let myPersonalLifeImgViewTrailingConstraint = NSLayoutConstraint(item: myPersonalLifeImgView, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 1.0, constant: 10)
//            ScrollView.addConstraints([myPersonalLifeImgViewHorizontalConstraint,myPersonalLifeImgViewVerticalConstraint,myPersonalLifeImgViewWidthConstraint,myPersonalLifeImgViewHeightConstraint,myPersonalLifeImgViewBottomConstraint])
        }
        else if segmentNo == 3 {
            ScrollView.reloadInputViews()
            let myHeadingLabel = UILabel()
            let myDashView = UIView()
            let FastestCentury = UILabel()
            let FastestCenturyDescView = UILabel()
            let MilesStonesHeading = UILabel()
            let MileStoneDesc = UITextView()
            let MostRunsHead = UILabel()
            let MostRunsDesV = UITextView()
            let CaptaincyRecordsHead = UILabel()
            let CaptainyRecordsDescV = UITextView()
            myHeadingLabel.text = "Rewards and Achievments."
            myHeadingLabel.font = UIFont.boldSystemFont(ofSize: 24)
            myHeadingLabel.textColor = UIColor.white
            ScrollView.addSubview(myHeadingLabel)
            myHeadingLabel.translatesAutoresizingMaskIntoConstraints = false
            myHeadingLabel.backgroundColor = UIColor.lightGray
//            myHeadingLabel.clipsToBounds = true
//            myHeadingLabel.layer.cornerRadius = 15
            let HorizontalMyHeadingConstraint = NSLayoutConstraint(item: myHeadingLabel, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let VerticalMyHeadingConstraint = NSLayoutConstraint(item: myHeadingLabel, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: SegmentioView, attribute: NSLayoutAttribute.bottom, multiplier: 1.05, constant: 0)
            let widthMyHeadingConstraint = NSLayoutConstraint(item: myHeadingLabel, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let heighMyHeadingConstraint = NSLayoutConstraint(item: myHeadingLabel, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.06, constant: 0)
//            let bottomMYHEadingConstraint = NSLayoutConstraint(item: myHeadingLabel, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([HorizontalMyHeadingConstraint,VerticalMyHeadingConstraint,widthMyHeadingConstraint,heighMyHeadingConstraint])
            myDashView.backgroundColor = UIColor.white
            myDashView.translatesAutoresizingMaskIntoConstraints = false
            ScrollView.addSubview(myDashView)
            let MYDashHorizontalConstraint = NSLayoutConstraint(item: myDashView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let MYDashVerticalConstraint = NSLayoutConstraint(item: myDashView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: myHeadingLabel, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            let myDashWidthConstraint = NSLayoutConstraint(item: myDashView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: myHeadingLabel, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let MyDashHeightConstraint = NSLayoutConstraint(item: myDashView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.0035, constant: 0)
//            let myDashBottomConstraint = NSLayoutConstraint(item: myDashView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([MYDashHorizontalConstraint,MYDashVerticalConstraint,myDashWidthConstraint,MyDashHeightConstraint])
//            Code for Fastest Century Label heading
            FastestCentury.text = "Fastest Century"
            FastestCentury.textColor = UIColor.white
            FastestCentury.font = UIFont.boldSystemFont(ofSize: 20)
            FastestCentury.backgroundColor = UIColor.lightGray
            ScrollView.addSubview(FastestCentury)
            FastestCentury.translatesAutoresizingMaskIntoConstraints = false
            let HorizontalFastestCentConstraint = NSLayoutConstraint(item: FastestCentury, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let VerticalFastestCentConstraint = NSLayoutConstraint(item: FastestCentury, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: myDashView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            let widthFastestCentConstraint = NSLayoutConstraint(item: FastestCentury, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let heighFastestCentConstraint = NSLayoutConstraint(item: FastestCentury, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.05, constant: 0)
//            let bottomFastestCentConstraint = NSLayoutConstraint(item: FastestCentury, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([HorizontalFastestCentConstraint,VerticalFastestCentConstraint,widthFastestCentConstraint,heighFastestCentConstraint])
//            Code for fastest century Desc View
            FastestCenturyDescView.numberOfLines = 0
            FastestCenturyDescView.text = "\u{2022} Fastest century by an Indian cricketer in ODIs (in 52 balls)."
            FastestCenturyDescView.textColor = UIColor.white
            FastestCenturyDescView.font = UIFont.boldSystemFont(ofSize: 16)
            FastestCenturyDescView.backgroundColor = UIColor.lightGray
            ScrollView.addSubview(FastestCenturyDescView)
            FastestCenturyDescView.translatesAutoresizingMaskIntoConstraints = false
        let HorizontalFastestCentDesConstraint = NSLayoutConstraint(item: FastestCenturyDescView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
        let VerticalFastestCentDesConstraint = NSLayoutConstraint(item: FastestCenturyDescView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: FastestCentury, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
        let widthFastestCentDesConstraint = NSLayoutConstraint(item: FastestCenturyDescView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
        let heighFastestCentDesConstraint = NSLayoutConstraint(item: FastestCenturyDescView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.08, constant: 0)
//        let bottomFastestCentDesConstraint = NSLayoutConstraint(item: FastestCenturyDescView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
        ScrollView.addConstraints([HorizontalFastestCentDesConstraint,VerticalFastestCentDesConstraint,widthFastestCentDesConstraint,heighFastestCentDesConstraint])
//            Code For MileStoneLabel Heading
            MilesStonesHeading.text = "Milestones"
            MilesStonesHeading.font = UIFont.boldSystemFont(ofSize: 24)
            MilesStonesHeading.textColor = UIColor.white
            MilesStonesHeading.backgroundColor = UIColor.lightGray
            ScrollView.addSubview(MilesStonesHeading)
            MilesStonesHeading.translatesAutoresizingMaskIntoConstraints = false
            let MileStoneHeadHorizontalConstraint = NSLayoutConstraint(item: MilesStonesHeading, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let MileStoneHeadVerticalConstraint = NSLayoutConstraint(item: MilesStonesHeading, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: FastestCenturyDescView, attribute: NSLayoutAttribute.bottom, multiplier: 1.01, constant: 0)
            let MileStoneHeadwidthConstraint = NSLayoutConstraint(item: MilesStonesHeading, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let MileStoneHeadHeightConstraint = NSLayoutConstraint(item: MilesStonesHeading, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.05, constant: 0)
//            let MileStoneHeadBottomConstraint = NSLayoutConstraint(item: MilesStonesHeading, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([MileStoneHeadHorizontalConstraint,MileStoneHeadVerticalConstraint,MileStoneHeadwidthConstraint,MileStoneHeadHeightConstraint])
//            Code For milestoneDesc
            MileStoneDesc.text = "\u{2022} Fastest Indian to reach 1,000 runs in ODIs.\n\n\u{2022} Fastest Indian and third fastest in the world to reach 5,000 runs in ODIs.\n\n\u{2022} Fastest Indian and second fastest in the world to reach 6,000 runs in ODIs.\n\n\u{2022} Fastest Indian and second fastest in the world to reach 7,000 runs in ODIs.\n\n\u{2022} Fastest player to reach 8,000 runs in ODIs.\n\n\u{2022} Fastest player to reach 9,000 runs in ODIs.\n\n\u{2022} Fastest Indian and second fastest in the world to reach 10 centuries in ODIs.\n\n\u{2022} Fastest Indian and second fastest in the world to reach 15 centuries in ODIs.\n\n\u{2022} Fastest Indian and second fastest in the world to reach 20 centuries in ODIs.\n\n\u{2022} Fastest Indian and second fastest in the world to reach 25 centuries in ODIs.\n\n\u{2022} Fastest in the world to reach 30 centuries in ODIs.\n\n\u{2022} Fastest in the world to reach 35 centuries in ODIs.\n\n\u{2022} Fastest in the world to reach 1,000 runs in T20Is.\n\n\u{2022} Fastest in the world to reach 15,000 international runs.\n\n\u{2022} Joint fastest batsman with Hashim Amla to reach 50 centuries across all forms of international cricket (348 innings).\n\n\u{2022} Only batsman in history to average more than 50 in Test matches, ODIs and T20Is simultaneously; also possesses the highest combined average across all formats among Test players who have played in at least two formats.\n\n\u{2022} Highest historic rating points by an Indian batsman in ODIs (909 points), achieved on 16 February 2018, and T20Is (897 points), achieved on 7 September 2014, in ICC rankings.\n\n\u{2022} Fastest player, in terms of innings, to score 17,000 runs in international cricket (363). \n\n\u{2022} He holds the rare feat of crossing 900 ratings points in ICC rankings in both Tests and ODIs - one among five batsmen to have done so - and only the second batsman after AB de Villiers to do it simultaneously. \n\n\u{2022} First batsman to score 500 runs in a bilateral ODI series."
            MileStoneDesc.isEditable = false
            MileStoneDesc.textColor = UIColor.white
            MileStoneDesc.font = UIFont.boldSystemFont(ofSize: 16)
            MileStoneDesc.backgroundColor = UIColor.lightGray
            ScrollView.addSubview(MileStoneDesc)
            MileStoneDesc.translatesAutoresizingMaskIntoConstraints = false
            MileStoneDesc.textAlignment = .justified
            let MileStoneDescVHorizontalConstraint = NSLayoutConstraint(item: MileStoneDesc, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let MileStoneDescVVerticalConstraint = NSLayoutConstraint(item: MileStoneDesc, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: MilesStonesHeading, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            let MileStoneDescVwidthConstraint = NSLayoutConstraint(item: MileStoneDesc, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let MileStoneDescVHeightConstraint = NSLayoutConstraint(item: MileStoneDesc, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 1.8, constant: 0)
//            let MileStoneDescVBottomConstraint = NSLayoutConstraint(item: MileStoneDesc, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([MileStoneDescVHorizontalConstraint,MileStoneDescVVerticalConstraint,MileStoneDescVwidthConstraint,MileStoneDescVHeightConstraint])
            //            code for MostRuns Heading label starts here
            MostRunsHead.text = "Most runs in a calendar year / series"
            MostRunsHead.textColor = UIColor.white
            MostRunsHead.font = UIFont.boldSystemFont(ofSize: 20)
            MostRunsHead.backgroundColor = UIColor.lightGray
            ScrollView.addSubview(MostRunsHead)
            MostRunsHead.translatesAutoresizingMaskIntoConstraints = false
            let MostRunsHorizontalConstraint = NSLayoutConstraint(item: MostRunsHead, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let MostRunsVerticalConstraint = NSLayoutConstraint(item: MostRunsHead, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: MileStoneDesc, attribute: NSLayoutAttribute.bottom, multiplier: 1.0035, constant: 0)
            let MostRunswidthConstraint = NSLayoutConstraint(item: MostRunsHead, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let MostRunsHeightConstraint = NSLayoutConstraint(item: MostRunsHead, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.06, constant: 0)
//            let MostRunsBottomConstraint = NSLayoutConstraint(item: MostRunsHead, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([MostRunsHorizontalConstraint,MostRunsVerticalConstraint,MostRunswidthConstraint,MostRunsHeightConstraint])
//            Code for mostRunsDescriptiveView
            MostRunsDesV.text = "\u{2022} Most ODI runs in 2010 by an Indian cricketer.\n\n\u{2022} Most ODI runs in 2011 by any cricketer.\n\n\u{2022} Most ODI runs in 2012 by an Indian cricketer.\n\n\u{2022} Most ODI runs in 2013 by an Indian cricketer.\n\n\u{2022} Most ODI runs in 2014 by an Indian cricketer.\n\n\u{2022} Most ODI runs in 2016 by an Indian cricketer.\n\n\u{2022} Most Test runs in 2012 by an Indian cricketer.\n\n\u{2022} Most Test runs in 2015 by an Indian cricketer.\n\n\u{2022} Most Test runs in 2016 by an Indian cricketer.\n\n\u{2022} Most combined international runs scored in a year by an Indian – 2818 international runs in 2017.\n\n\u{2022} Highest run scorer by an Indian in a three-match Test series – 610 runs against Sri Lanka in 2017.\n\n\u{2022}Most ODI runs in 2017 by any cricketer.\n\n\u{2022}Most runs in a bilateral ODI series by a player - 558 runs against South Africa in 2018."
            MostRunsDesV.isEditable = false
            MostRunsDesV.textAlignment = .justified
            MostRunsDesV.textColor = UIColor.white
            MostRunsDesV.font = UIFont.boldSystemFont(ofSize: 16)
            MostRunsDesV.backgroundColor = UIColor.lightGray
            ScrollView.addSubview(MostRunsDesV)
            MostRunsDesV.translatesAutoresizingMaskIntoConstraints = false
            let MostRunsDesVHorizontalConstraint = NSLayoutConstraint(item: MostRunsDesV, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let MostRunsDesVVerticalConstraint = NSLayoutConstraint(item: MostRunsDesV, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: MostRunsHead, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            let MostRunsDesVwidthConstraint = NSLayoutConstraint(item: MostRunsDesV, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let MostRunsDesVHeightConstraint = NSLayoutConstraint(item: MostRunsDesV, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.85, constant: 0)
//            let MostRunsDesVBottomConstraint = NSLayoutConstraint(item: MostRunsDesV, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([MostRunsDesVHorizontalConstraint,MostRunsDesVVerticalConstraint,MostRunsDesVwidthConstraint,MostRunsDesVHeightConstraint])
//            Code for Captancy records Head
            CaptaincyRecordsHead.text = "Captaincy records"
            CaptaincyRecordsHead.textColor = UIColor.white
            CaptaincyRecordsHead.font = UIFont.boldSystemFont(ofSize: 20)
            CaptaincyRecordsHead.backgroundColor = UIColor.lightGray
            ScrollView.addSubview(CaptaincyRecordsHead)
            CaptaincyRecordsHead.translatesAutoresizingMaskIntoConstraints = false
            let CaptaincyRecordsHeadHorizontalConstraint = NSLayoutConstraint(item: CaptaincyRecordsHead, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let CaptaincyRecordsHeadVerticalConstraint = NSLayoutConstraint(item: CaptaincyRecordsHead, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: MostRunsDesV, attribute: NSLayoutAttribute.bottom, multiplier: 1.0035, constant: 0)
            let CaptaincyRecordsHeadwidthConstraint = NSLayoutConstraint(item: CaptaincyRecordsHead, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let CaptaincyRecordsHeadHeightConstraint = NSLayoutConstraint(item: CaptaincyRecordsHead, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 0.06, constant: 0)
//            let CaptaincyRecordsHeadBottomConstraint = NSLayoutConstraint(item: CaptaincyRecordsHead, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([CaptaincyRecordsHeadHorizontalConstraint,CaptaincyRecordsHeadVerticalConstraint,CaptaincyRecordsHeadwidthConstraint,CaptaincyRecordsHeadHeightConstraint])
//            Code for CaptaincyRecrd Description View
            CaptainyRecordsDescV.text = "\u{2022} Most consecutive Test series win (9) as a captain from 2015–2017 (equal with Ricky Ponting from 2005–2008).\n\n\u{2022} First cricketer to score three centuries in his first three innings as Test captain. He is also the second Test captain to score centuries in his first two Test innings after Greg Chappell.\n\n\u{2022} First Indian Test captain to score a double century overseas.\n\n\u{2022} First Indian Test captain to score two or more double centuries.\n\n\u{2022} Fastest captain to score 1000 ODI runs.\n\n\u{2022}First ever batsman to score double centuries in four \n\n\u{2022} First Indian captain to score a hundred and a duck in the same Test.\n\n\u{2022} First captain to score 10 international hundreds in a calendar year.\n\n\u{2022} Most Test centuries as a captain of India (12).\n\n\u{2022} Most double centuries by a captain in Test cricket (6).\n\n\u{2022} Most centuries (11) by a captain in a calendar year (2017).\n\n\u{2022} Most runs as captain of India in Tests .\n\n\u{2022} Most ODI centuries as a captain of India (13)."
            CaptainyRecordsDescV.isEditable = false
            CaptainyRecordsDescV.textColor = UIColor.white
            CaptainyRecordsDescV.font = UIFont.boldSystemFont(ofSize: 16)
            CaptainyRecordsDescV.backgroundColor = UIColor.lightGray
            ScrollView.addSubview(CaptainyRecordsDescV)
            CaptainyRecordsDescV.translatesAutoresizingMaskIntoConstraints = false
            let CaptainyRecordsDescVHorizontalConstraint = NSLayoutConstraint(item: CaptainyRecordsDescV, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
            let CaptainyRecordsDescVVerticalConstraint = NSLayoutConstraint(item: CaptainyRecordsDescV, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: CaptaincyRecordsHead, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            let CaptainyRecordsDescVwidthConstraint = NSLayoutConstraint(item: CaptainyRecordsDescV, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 0)
            let CaptainyRecordsDescVHeightConstraint = NSLayoutConstraint(item: CaptainyRecordsDescV, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.height, multiplier: 1.1, constant: 0)
            let CaptainyRecordsDescVBottomConstraint = NSLayoutConstraint(item: CaptainyRecordsDescV, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: ScrollView, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 0)
            ScrollView.addConstraints([CaptainyRecordsDescVHorizontalConstraint,CaptainyRecordsDescVVerticalConstraint,CaptainyRecordsDescVwidthConstraint,CaptainyRecordsDescVHeightConstraint,CaptainyRecordsDescVBottomConstraint])
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollView.bounces = false
        TitleLabel.numberOfLines = 2
        TitleLabel.text = "Virat Kohli \n India"
        TitleLabel.textAlignment = .center
        TitleLabel.backgroundColor = UIColor.darkGray
        TitleLabel.textColor = UIColor.white
        TitleLabel.font = UIFont.boldSystemFont(ofSize: 16)
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
        var content = [SegmentioItem]()
        let About = SegmentioItem(title: "About",image: nil)
        let Career = SegmentioItem(title: "Career", image: nil)
        let Personal = SegmentioItem(title: "Personal Life", image: nil)
        let Achievments = SegmentioItem(title: "Rewards", image: nil)
        content.append(About)
        content.append(Career)
        content.append(Personal)
        content.append(Achievments)
        SegmentioView.setup(content: content , style: .onlyLabel, options: nil)
        SegmentioView.valueDidChange = { Segmentio,segmentIndex in
            print("Selected item  : \(segmentIndex)")
            self.segmentSelected(segmentNo: segmentIndex)

            
        }
        
        
    }

}
