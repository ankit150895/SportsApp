//
//  FirstContainerViewController.swift
//  calculator
//
//  Created by Ankit Tanna on 21/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class FirstContainerViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let mySectionHeading = ["Profile","Grind through the ranks","Cementing a national spot","Captaincy and a change in technique","IPL and T20 dominance"]
    let mySectionContent = ["A spunky, chubby teenager with gelled hair shot to fame after leading India to glory in the Under-19 World Cup at Kuala Lumpur in early 2008. In an Indian team filled with saint-like icons worthy of their own hagiographies, Virat Kohli, with his most un-Indian, 'bad-boy' intensity, would clearly be an outcast.","He soon joined the senior Men in Blue in Sri Lanka, come August 2008. In the absence of the regular openers, Virat Kohli was given a chance to open the batting in the ODI series. He played some commendable knocks in his extended run as an opener, as India went on to win the ODI series. However, the established and formidable pair of Tendulkar and Sehwag kept Kohli out of the team.\n\n\nThe 20-year-old continued to impress for Delhi and dominated attacks, clearly demonstrating that he belonged at a much higher level; that junior cricket was beneath his standards. Kohli then traveled to Australia in 2009 for the Emerging players tournament and stamped his authority all over the bowling attacks. He added 'big-match temperament' to his résumé too, lacing a fluent hundred in the final against South Africa, and guiding his team to a clinical victory. The young prodigy, barely old enough to receive his man-of-the-match champagne, ended the tournament with 398 runs from 7 outings with two centuries and two fifties, ensuring that he remained fresh in the selectors' minds.","The selectors had no choice but to give Kohli another go in the Indian side, and this time he strung together a number of impressive scores. After being given an extended run, he repaid their faith by notching up his maiden ODI hundred in an impressive run-chase against Sri Lanka in December 2009 - his first of many exemplary knocks in run-chases. In the World Cup final of 2011, the biggest stage of them all, Kohli, along with his Delhi teammate Gautam Gambhir, pulled off a largely underrated rescue effort with an 83-run stand after losing the openers early. This knock played a crucial role in setting the platform for MS Dhoni's fabled knock of 91*, which eventually won India the World Cup on that enchanting evening in Mumbai.\n\n\nIn the hangover of the World Cup euphoria, Kohli continued to take giant strides in the limited-overs format. Three years after his ODI debut, he was finally handed the coveted Test cap in the Caribbean islands in July 2011, owing to the need to rest the senior players. After a series each against the Dukes ball and the SG ball, it was now time for his trial against the Kookaburra Down Under. In the first two Tests, he seemed to lack the technique to play in Australia, maintaining his low stance on the bouncy tracks. He also had a rather restricting trigger movement with his front-foot routinely coming across towards off-stump, thereby hindering the necessary movement to play back-foot shots such as the pull and the cut.","With regular captain MS Dhoni ailing from an injury, Kohli was named stand-in captain for the first Test at Adelaide. After an abysmal tour of England, critics were sceptical of Kohli's performance in Australia in the Border-Gavaskar trophy in December. Kohli proved that they couldn't have been more wrong, as he scored two fluent hundreds in the first Test at Adelaide. His second innings masterclass of 141 almost pulled off a stunning run-chase on a notorious 5th day rank-turner, and went on to score a total of four hundreds on this tour. Saying that he had silenced critics would be an understatement; however, his technique of playing beside the ball, and the bat coming down from gully rather than slip continued to bother him whenever exposed to late lateral movement.\n\n\nAs India prepared for their title defence ahead of the 2015 World Cup Down Under, with the catch phrase 'Won't give it back' doing the rounds, Virat Kohli was touted to be a key performer for India. The Indians had a terrible run in Australia, having failed to win a single match in the Test series as well as the succeeding ODI tri-series. Kohli started off in signature fashion, with a typically stroke-filled hundred against Pakistan as India maintained their unbeaten run against their arch-rivals in ICC events. As India stormed into the semi-finals unbeaten, Kohli's form continued to take an uncharacteristic dip, culminating in a painstaking 1 in the semi-final loss against the co-hosts and eventual champions, Australia.\n\n\nKohli, now the full-time Test captain, toured Sri Lanka with a young side without the services of Mahendra Singh Dhoni, wary of the Sri Lankan spinners' fabled 4th innings con-job. After losing the first Test, Kohli's India recorded a dramatic come-from-behind win in the series, going on to win 2-1. Kohli continued to build on his auspicious start to Test captaincy as he led them to a rout of the South Africans on a series of rank-turners all around India. He had a quiet series with the bat, as the more stoic batsmen of his team took over. Nonetheless, the triumph took India to the No. 1 spot in the ICC Test rankings for the first time since they forfeited it to England after the forgettable white-wash in 2011.","He continued his emphatic run in the World T20, batting (and running) like a man possessed, thrashing boundaries with ridiculous ease. Despite an 89* in the semi-final against the West Indies (extending his inhuman run of form in the format), India's bowling panicked at a crucial stage. One had to feel sorry for him as he had to make do with the 'Player of the tournament' award for the second successive Twenty20 World Cup; a distinction he would've gladly exchanged for the elusive World T20 trophy. Kohli's thirst for runs showed no signs of slowing down as he looted a small matter of 973 runs during the 2016 edition of the Indian Premier League, the most (by far) by any batsman in the history of the tournament - as he led his Royal Challengers Bangalore (RCB) franchise to a runners-up finish. "]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return mySectionHeading.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstControllerCell") as! FirstControllerTableViewCell
        cell.myLabel.text = mySectionContent[indexPath.section]
        cell.myLabel.isEditable = false
        cell.myLabel.isScrollEnabled = false
        cell.myLabel.font = UIFont.boldSystemFont(ofSize: 18)
        cell.myLabel.textAlignment = .justified
        cell.myLabel.backgroundColor = UIColor.lightGray
        cell.myLabel.textColor = UIColor.white
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        print("Getting into titleforheader")
        return mySectionHeading[section]
        }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

}
