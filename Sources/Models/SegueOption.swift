//
//  SegueOption.swift
//  FreshRouting
//
//  Created by Michael Grant on 1/19/25.
//

import SwiftUI

public enum SegueOption {
    case push, sheet, fullScreenCover
    
    var shouldAddNewNavigationView: Bool {
        switch self {
        case .push:
            return false
        case .sheet, .fullScreenCover:
            return true
        }
    }
}
