//
//  Nibless.ViewController.swift
//  SwiftUIWrapper
//
//  Created by Haider Khan on 6/4/19.
//  Copyright © 2019 zkhaider. All rights reserved.
//

import Foundation
import UIKit

open class NiblessViewController: UIViewController {
    
    public required init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


open class NiblessView: UIView {

    public required init() {
        super.init(frame: .zero)
    }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
