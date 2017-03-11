//
//  TDDTests.swift
//  TDDTests
//
//  Created by eyemac on 2017. 3. 11..
//  Copyright © 2017년 eyerama. All rights reserved.
//

import Quick
import Nimble

@testable import TDD

protocol NoContinueAfterFailureable {
    var continueAfterFailure: Bool { set get }
}

extension NoContinueAfterFailureable {
    var continueAfterFailure: Bool { return false }
}

class TDDTests: QuickSpec, NoContinueAfterFailureable {

    override func spec() {
        
        describe("😄Dollar") {
            context("multiplication", {
                var five = Dollar(5)
                var product = five.times(2)
                expect(product!.amount).to(equal(10))
                product = five.times(3)
                expect(product!.amount).to(equal(15))
            })
        }
        
    }
}
