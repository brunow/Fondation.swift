import Foundation
import XCTest
@testable import Fondation

class TestArray: XCTestCase {
    
    let allValuesWithDuplicate: [EquatableEnum] = [.pending, .accepted, .refused, .finished, .finished]
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRemove() {
        var allValues = allValuesWithDuplicate
        let expectedCount = allValues.count - 2
        allValues.remove(element: .finished)
        XCTAssertEqual(expectedCount, allValues.count)
    }
    
    func testSkipElements() {
        let allValues = allValuesWithDuplicate
        let values = allValues.skip(elements: [.finished])
        let expectedCount = allValues.count - 2
        XCTAssertEqual(expectedCount, values.count)
    }
    
    func testOnlyElements() {
        let allValues = EquatableEnum.allValues()
        let values = allValues.only(elements: [.accepted])
        let expectedCount = 1
        XCTAssertEqual(expectedCount, values.count)
    }
    
    func testIncludeElement() {
        let includeElement = allValuesWithDuplicate.include(element: .pending)
        let expectedValue = true
        XCTAssertEqual(expectedValue, includeElement)
    }
    
}
