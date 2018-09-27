//
//  BitcoinPaymentURITestTests.swift
//  BitcoinPaymentURITestTests
//
//  Created by wangjh on 2018/9/27.
//  Copyright © 2018 wangjh. All rights reserved.
//

import XCTest
@testable import BitcoinPaymentURITest

class BitcoinPaymentURITestTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBitcoin() {
        let content = "bitcoin:175tWpb8K1S7NmH4Zx6rewF9WQrcZv245W?label=Luke-Jr"
        guard let bpuri = BitcoinPaymentURI.parse(content) else {
            XCTFail("fail")
            return
        }
        XCTAssertEqual(bpuri.schema!, "bitcoin")
        XCTAssertEqual(bpuri.address!, "175tWpb8K1S7NmH4Zx6rewF9WQrcZv245W")
    }
    
    func testEthereum() {
        let content = "iban:XE97N3I9OFZXOV7I19OGWFH9LYWG2N5CN0O?amount=0&token=ETH"
        guard let bpuri = BitcoinPaymentURI.parse(content) else {
            XCTFail("fail")
            return
        }
        XCTAssertEqual(bpuri.schema!, "iban")
        XCTAssertEqual(bpuri.address!, "XE97N3I9OFZXOV7I19OGWFH9LYWG2N5CN0O")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
