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
    
    let alert = UIAlertController(title: "Deck Code Copied!", message: "Open Legends of Runeterra to Import Deck", preferredStyle: .alert)
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AnalyticsPreview" {
            
            if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Freiljord Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "Demacia - Freljord lytics" )
            }
            
            if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Ionia Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "Demacia - Ionia lytics" )
            }
            
            if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Noxus Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "Demacia Noxus lytics" )
            }
            
            if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Piltover Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "Demacia Piltover lytics" )
            }
            
            if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Shadowisles Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "Demacia Shadow Isles lytics" )
            }
            
            if (deckListImage.image?.isEqual(UIImage(named: "Freiljord - Ionia Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "Ionia Freljord lytics" )
            }
            
            if (deckListImage.image?.isEqual(UIImage(named: "Freljord - Noxus Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "Freljord Noxus lytics" )
            }
            
            if (deckListImage.image?.isEqual(UIImage(named: "Freljord - Piltover Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "Freljord Piltover lytics" )
            }
            
            if (deckListImage.image?.isEqual(UIImage(named: "Freljord - Shadow Isles Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "Freljord Shadow Isles lytics" )
            }
            
            if (deckListImage.image?.isEqual(UIImage(named: "Ionia - Noxus Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "Noxus Ionia lytics" )
            }
            
            if (deckListImage.image?.isEqual(UIImage(named: "Ionia - Piltover Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "Ionia Piltover lytics" )
            }
            
            if (deckListImage.image?.isEqual(UIImage(named: "Ionia - Shadow Isles Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "Ionia Shadow Isles lytics" )
            }
            
            if (deckListImage.image?.isEqual(UIImage(named: "Noxus - Shadow Isles Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "Noxus Shadow Analytics" )
            }
            
            if (deckListImage.image?.isEqual(UIImage(named: "Piltover - Noxus Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "Noxus Piltover Analytics" )
            }
            
            if (deckListImage.image?.isEqual(UIImage(named: "Piltover - Shadow Isles Deck")))!{
                let dpvc = segue.destination as! DeckAnalyticsViewController
                dpvc.anlalyticsImage2 = UIImage(named: "DShadow Piltover Analytics" )
            }
            
            
            
        }}
    
    
    
    @IBAction func copyDeckCode(_ sender: Any) {
        copyCodeButtpn.setBackgroundImage(UIImage(named: "Copied button Dropshadow"), for: .normal)
        
        if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Freiljord Deck")))!{
            UIPasteboard.general.string = "CEAAEBYBAEDRMGREFYZDKCABAABQMCYSCQNB2JYCAQAQABYMFIWAMAIBBEKCAIRHFE"
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                CATransaction.setCompletionBlock({
//                    self.performSegue(withIdentifier: "goBack", sender: nil)
//                })
            }))
            self.present(alert, animated: true)
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Ionia Deck")))!{
            UIPasteboard.general.string = "CECAEAQCAMEQEAQAAMEQIAICAICCSOIEAEAA6GRBFIAQCAQAAEBACAICGEAQEAAF"
               alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                         CATransaction.setCompletionBlock({
//                             self.performSegue(withIdentifier: "goBack", sender: nil)
//                         })
                     }))
                     self.present(alert, animated: true)
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Noxus Deck")))!{
                   UIPasteboard.general.string = "CEBQEAQDAQDQGAIABEGRUBQBAMDB2HRAF4YACAICAMBQIAICAADQCAIDCMAQEAYBAIAQAFJU"
               alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                         CATransaction.setCompletionBlock({
//                             self.performSegue(withIdentifier: "goBack", sender: nil)
//                         })
                     }))
                     self.present(alert, animated: true)
               }
        if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Piltover Deck")))!{
                          UIPasteboard.general.string = "CEBQCAQEBABAEAADBEDQCAABBEHRUHJLFUBACAQAAUBQCABBEUZQEAICAADQCAIADE"
               alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                         CATransaction.setCompletionBlock({
//                             self.performSegue(withIdentifier: "goBack", sender: nil)
//                         })
                     }))
                     self.present(alert, animated: true)
                      }
        if (deckListImage.image?.isEqual(UIImage(named: "Demacia - Shadowisles Deck")))!{
            UIPasteboard.general.string = "CEBQCAQFAQBQCAAPDI3AOAIFBMNCAKJQGE5ACAIBAUMQEAQBAABDEAYBAUAQ6OI"
               alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                         CATransaction.setCompletionBlock({
//                             self.performSegue(withIdentifier: "goBack", sender: nil)
//                         })
                     }))
                     self.present(alert, animated: true)
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Freiljord - Ionia Deck")))!{
            UIPasteboard.general.string = "CEBAEAIBAQLAWAICAIDASDARCULSQLBSHEAACAIBAIYQ"
               alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                         CATransaction.setCompletionBlock({
//                             self.performSegue(withIdentifier: "goBack", sender: nil)
//                         })
                     }))
                     self.present(alert, animated: true)
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Freljord - Noxus Deck")))!{
            UIPasteboard.general.string = "CEBQCAQDAMCQCAIEBELC4MQFAEBQMHI6F4YAEAIBAMCQEAIBBUVACAICAEAQ"
               alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                         CATransaction.setCompletionBlock({
//                             self.performSegue(withIdentifier: "goBack", sender: nil)
//                         })
                     }))
                     self.present(alert, animated: true)
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Freljord - Piltover Deck")))!{
            UIPasteboard.general.string = "CECACAQEBIBAEAICA4BACAIEEACQCBAIDENTIOQCAEBACCQDAECCOMJVAIAQCBA2AEAQCKQ"
               alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                         CATransaction.setCompletionBlock({
//                             self.performSegue(withIdentifier: "goBack", sender: nil)
//                         })
                     }))
                     self.present(alert, animated: true)
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Freljord - Shadow Isles Deck")))!{
            UIPasteboard.general.string = "CEBACAIBEIEQCBIQDIOR4KBLGEZDKAYBAEAQGAIBAUMQEAQFAECACAQBAUASG"
               alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                         CATransaction.setCompletionBlock({
//                             self.performSegue(withIdentifier: "goBack", sender: nil)
//                         })
                     }))
                     self.present(alert, animated: true)
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Ionia - Noxus Deck")))!{
            UIPasteboard.general.string = "CECACAQDBEAQEAQFAMAQEAQIB4CACAZEFYXTOAQDAEBR4KRWAMAQEJJRHAAQCAIDBI"
               alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                         CATransaction.setCompletionBlock({
//                             self.performSegue(withIdentifier: "goBack", sender: nil)
//                         })
                     }))
                     self.present(alert, animated: true)
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Ionia - Piltover Deck")))!{
            UIPasteboard.general.string = "CECACAQEBABAEAQBBECACAQCBQTDSBIBAQIBWJZUHAAQEAICEUYQA"
               alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                         CATransaction.setCompletionBlock({
//                             self.performSegue(withIdentifier: "goBack", sender: nil)
//                         })
                     }))
                     self.present(alert, animated: true)
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Ionia - Shadow Isles Deck")))!{
            UIPasteboard.general.string = "CEBQCAICAMBAEBIBAQCACBIEC4VDCAQCAEBAEMIFAECQYFI6FAYAGAICAUEACAICDABQCBIDA4KA"
               alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                         CATransaction.setCompletionBlock({
//                             self.performSegue(withIdentifier: "goBack", sender: nil)
//                         })
                     }))
                     self.present(alert, animated: true)
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Noxus - Shadow Isles Deck")))!{
            UIPasteboard.general.string = "CEAAEBYBAMGA6EYXEYXDOCABAUAQKHJIFMZDKNQCAQAQKIRGFEYQMAIDAIEQ2KJLGM"
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                CATransaction.setCompletionBlock({
//                    self.performSegue(withIdentifier: "goBack", sender: nil)
//                })
            }))
            self.present(alert, animated: true)
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Piltover - Noxus Deck")))!{
            UIPasteboard.general.string = "CEBQEAQDAMCAIAIEBAITINQGAEBQEDAPDYSS6AICAECB6JYA"
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                CATransaction.setCompletionBlock({
//                    self.performSegue(withIdentifier: "goBack", sender: nil)
//                })
            }))
            self.present(alert, animated: true)
        }
        
        if (deckListImage.image?.isEqual(UIImage(named: "Piltover - Shadow Isles Deck")))!{
            UIPasteboard.general.string = "CEBQEAQEAYEAGAIEDMPTIBQBAUOSCKBSGU3AEAIBAQYAEAIFAE4ACAIBAUHQ"
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: {_ in
//                CATransaction.setCompletionBlock({
//                    self.performSegue(withIdentifier: "goBack", sender: nil)
//                })
            }))
            self.present(alert, animated: true)
            
        }
        
    }
    

 

}


