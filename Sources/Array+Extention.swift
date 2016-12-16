//
//	Swift Foundation framework.
//	Created by:				Bruno Wernimont
//
//
//	Permission is hereby granted, free of charge, to any person obtaining a copy
//	of this software and associated documentation files (the "Software"), to deal
//	in the Software without restriction, including without limitation the rights
//	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//	copies of the Software, and to permit persons to whom the Software is
//	furnished to do so, subject to the following conditions:
//
//	The above copyright notice and this permission notice shall be included in
//	all copies or substantial portions of the Software.
//
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//	THE SOFTWARE.

import Foundation

public extension Array where Element: Equatable {
    
    public mutating func remove(element: Element) {
        self = filter({$0 != element})
    }
    
    public func skip(element: Element) -> Array<Element> {
        return skip(elements: [element])
    }
    
    public func skip(elements skipingElements: [Element]) -> Array<Element> {
        var newElements: [Element] = []
        
        for object in self {
            if !skipingElements.contains(object) {
                newElements.append(object)
            }
        }
        
        return newElements
    }
    
    public func only(element: Element) -> Array<Element> {
        return only(elements: [element])
    }
    
    public func only(elements toKeepElements: [Element]) -> Array<Element> {
        var newElements: [Element] = []
        
        for object in self {
            if toKeepElements.contains(object) {
                newElements.append(object)
            }
        }
        
        return newElements
    }
    
}
