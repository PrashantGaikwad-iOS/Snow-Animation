//
//  SnowAnimation.swift
//  Snow Animation
//
//  Created by Prashant G on 12/26/18.
//  Copyright © 2018 Prashant G. All rights reserved.
//

import UIKit

class SnowEmitter {
    class func getEmitterThat(emits image: UIImage) -> CAEmitterLayer {
        let emitter = CAEmitterLayer()
        emitter.emitterShape = CAEmitterLayerEmitterShape.line
        emitter.emitterCells = generateEmitterCells(with: image)
        return emitter
    }
    
    class func generateEmitterCells(with image: UIImage) -> [CAEmitterCell] {
        var cells = [CAEmitterCell]()
        
        let cell = CAEmitterCell()
        cell.contents = image.cgImage
        cell.birthRate = 1
        cell.lifetime = 50 // seconds
        cell.velocity = CGFloat(25) // How fast cells are emitted
        cell.emissionLongitude = (180 * (.pi / 180)) // 0° is straight up, 180° is straight down
        cell.emissionRange = (45 * (.pi / 180)) // Variation in emission longitude
        cell.scale = 0.08 // 1 is normal size. < 1 will make it smaller.
        cell.scaleRange = 0.2 // Variation in size
        cell.spinRange = 0.5 // Variation in the amount the cell can spin (rotate)
        cells.append(cell)
        
        return cells
    }
}
