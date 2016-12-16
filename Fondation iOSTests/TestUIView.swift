import Foundation
import UIKit
import XCTest
@testable import Fondation

class TestUIView: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddSubViews() {
        let containerView = UIView()
        let expectedCount = 2
        containerView.addSubViews([UIView(), UIView()])
        XCTAssertEqual(expectedCount, containerView.subviews.count)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
