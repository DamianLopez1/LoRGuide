//
//  CardController.swift
//  Stats Of Runeterra
//
//  Created by Damian Lopez on 6/11/20.
//  Copyright © 2020 Damian Lopez. All rights reserved.
//

import Foundation

enum CardsError: Error {
    case failed
}

protocol CardController {
    func jsonConverter()
}
