//
//  NavigationStackIfNeeded.swift
//  FreshRouting
//
//  Created by Michael Grant on 1/19/25.
//

import SwiftUI

struct NavigationStackIfNeeded<Content: View>: View {
    
    @Binding var path: [AnyDestination]
    var addNavigationView: Bool = true
    @ViewBuilder var content: Content
    
    var body: some View {
        if addNavigationView {
            NavigationStack(path: $path) {
                content
                    .navigationDestination(for: AnyDestination.self) { value in
                        value.destination
                    }
            }
        } else {
            content
        }
    }
}
