//
//  JsonFileController.swift
//  Stats Of Runeterra
//
//  Created by Damian Lopez on 6/9/20.
//  Copyright © 2020 Damian Lopez. All rights reserved.
//

import Foundation

class JsonFileController {
    
    
    static func jsonConverter() -> [CardInfo]? {
        
        guard let path = Bundle.main.url(forResource: "set1-en_us", withExtension: "json"),
        let jsonData = try? Data(contentsOf: path)
            else  {
            return nil
        }


        let decoder = JSONDecoder()

        do {
            let cards = try decoder.decode([CardInfo].self, from: jsonData)
            return cards
        } catch {
            print(error)
            return nil
        }
    }
}


