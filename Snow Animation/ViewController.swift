//
//  ViewController.swift
//  Snow Animation
//
//  Created by Prashant G on 12/26/18.
//  Copyright © 2018 Prashant G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeItSnow()
    }
    
    func makeItSnow() {
        let emitter = SnowEmitter.getEmitterThat(emits: #imageLiteral(resourceName: "christmas-snowflake"))
        emitter.emitterPosition = CGPoint(x: view.frame.size.width / 2, y: 0)
        emitter.emitterSize = CGSize(width: view.frame.size.width, height: 2.0)
        view.layer.addSublayer(emitter)
    }

}

