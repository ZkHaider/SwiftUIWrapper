//
//  Coordinator.swift
//  SwiftUIWrapper
//
//  Created by Haider Khan on 6/4/19.
//  Copyright © 2019 zkhaider. All rights reserved.
//

import Foundation

protocol AnyRepresentable {}

protocol ViewControllerCoordinator: class {
    associatedtype ViewController: UIViewController
    var representable: ViewControllerWrapping<Self> { get }
    init(representable: ViewControllerWrapping<Self>)
    func updateViewController(_ uiViewController: ViewController)
}

extension ViewControllerCoordinator {
    public init(_ r: ViewControllerWrapping<Self>) {
        self.init(representable: r)
    }
}
