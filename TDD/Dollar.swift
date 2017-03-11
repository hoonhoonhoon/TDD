//
//  Dollar.swift
//  TDD
//
//  Created by eyemac on 2017. 3. 11..
//  Copyright © 2017년 eyerama. All rights reserved.
//

import Foundation

struct Dollar {

    var amount: Int

    init(_ amount: Int) {
        self.amount = amount
    }

    mutating func times(_ time: Int) -> Dollar? {
        return Dollar(self.amount * time)
    }
}
