//
//  ViewController.Wrapper.swift
//  SwiftUIWrapper
//
//  Created by Haider Khan on 6/4/19.
//  Copyright © 2019 zkhaider. All rights reserved.
//

import Foundation
import SwiftUI

struct ViewControllerWrapping<C: ViewControllerCoordinator>: UIViewControllerRepresentable, AnyRepresentable {
    
    typealias UIViewControllerType = C.ViewController
    typealias ViewController = UIViewControllerType
    typealias Coordinator = C
    
    // MARK: - ViewController
    
    var viewController: ViewController
    
    // MARK: - Init
    
    init(viewController: ViewController = ViewController(nibName: nil, bundle: nil)) {
        self.viewController = viewController
    }
    
    // MARK: - Coordinator
    
    func makeCoordinator() -> Coordinator {
        Coordinator.init(self)
    }
    
    // MARK: - Make
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerWrapping<C>>) -> ViewController {
        let vc = ViewController(nibName: nil, bundle: nil)
        return vc
    }
    
    func updateUIViewController(_ uiViewController: ViewController,
                                context: UIViewControllerRepresentableContext<ViewControllerWrapping<C>>) {
        context.coordinator.updateViewController(uiViewController)
    }
    
}
