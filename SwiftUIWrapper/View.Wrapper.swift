//
//  View.Wrapper.swift
//  SwiftUIWrapper
//
//  Created by Haider Khan on 6/4/19.
//  Copyright © 2019 zkhaider. All rights reserved.
//

import Foundation
import SwiftUI

struct ViewWrapping<V: UIView>: UIViewRepresentable {
    
    typealias UIViewType = V
    typealias View = UIViewType
    
    // MARK: - View
    
    var view: View
}

extension ViewWrapping where V: UIView {
    init(_ uiView: V = V(frame: .zero)) {
        self.view = uiView
    }
    
    func makeUIView(context: UIViewRepresentableContext<ViewWrapping<V>>) -> V {
        let v = V(frame: .zero)
        return v
    }
    
    func updateUIView(_ uiView: V,
                      context: UIViewRepresentableContext<ViewWrapping<V>>) {
        
    }
}

extension ViewWrapping where V: NiblessView {
    init(_ niblessView: V = V()) {
        self.view = niblessView
    }
    
    func makeUIView(context: UIViewRepresentableContext<ViewWrapping<V>>) -> V {
        let v = V()
        return v
    }
    
    func updateUIView(_ uiView: V,
                      context: UIViewRepresentableContext<ViewWrapping<V>>) {
        
    }
}
