//
//  DeckPreviewViewController.swift
//  Stats Of Runeterra
//
//  Created by Damian Lopez on 3/27/20.
//  Copyright © 2020 Damian Lopez. All rights reserved.
//

import UIKit

class DeckPreviewViewController: UIViewController {
    

    @IBOutlet weak var copyCodeButtpn: UIButton!
    @IBOutlet weak var deckListImage: UIImageView!
    
    var deckImage: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        deckListImage.image = deckImage
    }
    
  
    
    
    @IBAction func copyDeckCode(_ sender: Any) {
        copyCodeButtpn.setBackgroundImage(UIImage(named: "Copied button Dropshadow"), for: .normal)
        
        if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Freiljord Deck")))!{
            UIPasteboard.general.string = "CEAAEBYBAEDRMGREFYZDKCABAABQMCYSCQNB2JYCAQAQABYMFIWAMAIBBEKCAIRHFE"
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Ionia Deck")))!{
            UIPasteboard.general.string = "CECAEAQCAMEQEAQAAMEQIAICAICCSOIEAEAA6GRBFIAQCAQAAEBACAICGEAQEAAF"
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Noxus Deck")))!{
                   UIPasteboard.general.string = "CEBQEAQDAQDQGAIABEGRUBQBAMDB2HRAF4YACAICAMBQIAICAADQCAIDCMAQEAYBAIAQAFJU"
               }
        if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Piltover Deck")))!{
                          UIPasteboard.general.string = "CEBQCAQEBABAEAADBEDQCAABBEHRUHJLFUBACAQAAUBQCABBEUZQEAICAADQCAIADE"
                      }
        if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Shadowisles Deck")))!{
            UIPasteboard.general.string = "CEBQCAQFAQBQCAAPDI3AOAIFBMNCAKJQGE5ACAIBAUMQEAQBAABDEAYBAUAQ6OI"
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Freiljord - Ionia Deck")))!{
            UIPasteboard.general.string = "CEBAEAIBAQLAWAICAIDASDARCULSQLBSHEAACAIBAIYQ"
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Freljord - Noxus Deck")))!{
            UIPasteboard.general.string = "CEBQCAQDAMCQCAIEBELC4MQFAEBQMHI6F4YAEAIBAMCQEAIBBUVACAICAEAQ"
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Freljord - Piltover Deck")))!{
            UIPasteboard.general.string = "CECACAQEBIBAEAICA4BACAIEEACQCBAIDENTIOQCAEBACCQDAECCOMJVAIAQCBA2AEAQCKQ"
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Freljord - Shadow Isles Deck")))!{
            UIPasteboard.general.string = "CEBACAIBEIEQCBIQDIOR4KBLGEZDKAYBAEAQGAIBAUMQEAQFAECACAQBAUASG"
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Ionia - Noxus Deck")))!{
            UIPasteboard.general.string = "CECACAQDBEAQEAQFAMAQEAQIB4CACAZEFYXTOAQDAEBR4KRWAMAQEJJRHAAQCAIDBI"
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Ionia - Piltover Deck")))!{
            UIPasteboard.general.string = "CECACAQEBABAEAQBBECACAQCBQTDSBIBAQIBWJZUHAAQEAICEUYQA"
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Ionia - Shadow Isles Deck")))!{
            UIPasteboard.general.string = "CEBQCAICAMBAEBIBAQCACBIEC4VDCAQCAEBAEMIFAECQYFI6FAYAGAICAUEACAICDABQCBIDA4KA"
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Noxus - Shadow Isles Deck")))!{
            UIPasteboard.general.string = "CEAAEBYBAMGA6EYXEYXDOCABAUAQKHJIFMZDKNQCAQAQKIRGFEYQMAIDAIEQ2KJLGM"
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Piltover - Noxus Deck")))!{
            UIPasteboard.general.string = "CEBQEAQDAMCAIAIEBAITINQGAEBQEDAPDYSS6AICAECB6JYA"
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Piltover - Shadow Isles Deck")))!{
            UIPasteboard.general.string = "CEBQEAQEAYEAGAIEDMPTIBQBAUOSCKBSGU3AEAIBAQYAEAIFAE4ACAIBAUHQ"
        }
    }
    

 

}
