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
   
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var SegmentioView : Segmentio!
    @IBOutlet weak var TitleLabel : UILabel!
    
    @IBOutlet weak var firstContainer: UIView!
    
    @IBOutlet weak var fourthContainer: UIView!
    @IBOutlet weak var thirdContainer: UIView!
    @IBOutlet weak var secondContainer: UIView!
    @objc func segmentSelected(segmentNo : Int){
        if segmentNo == 0 {
        firstContainer.isHidden = false
        secondContainer.isHidden = true
        thirdContainer.isHidden = true
        fourthContainer.isHidden = true
        } else if segmentNo == 1 {
            firstContainer.isHidden = true
            secondContainer.isHidden = false
            thirdContainer.isHidden = true
            fourthContainer.isHidden = true
        }
        else if segmentNo == 2 {
            firstContainer.isHidden = true
            secondContainer.isHidden = true
            thirdContainer.isHidden = false
            fourthContainer.isHidden = true
        }
        else if segmentNo == 3 {
            firstContainer.isHidden = true
            secondContainer.isHidden = true
            thirdContainer.isHidden = true
            fourthContainer.isHidden = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        secondContainer.isHidden = true
        thirdContainer.isHidden = true
        fourthContainer.isHidden = true
        headerImage.layer.cornerRadius = headerImage.frame.width * 0.5
        headerImage.clipsToBounds = true
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
