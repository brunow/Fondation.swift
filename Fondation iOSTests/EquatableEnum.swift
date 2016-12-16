//
//  EquatableEnum.swift
//  Fondation
//
//  Created by cesar4 on 16/12/16.
//
//

import Foundation

enum EquatableEnum: Equatable {
    case pending, accepted, refused, finished
    
    static func allValues() -> [EquatableEnum] {
        return [.pending, .accepted, .refused, .finished]
    }
    
    static func allValuesWithDuplicate() -> [EquatableEnum] {
        return [.pending, .accepted, .refused, .finished, .finished, .pending]
    }
}
