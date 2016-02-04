//
//  NAPOPAnimation.swift
//
//  Created by Navarjun Singh on 2/3/16.
//

import UIKit

enum NAPOPAnimationType {
    case Scale
}

class NAPOPAnimation {
    var value: CGFloat = 1
    var duration: Double = 0.2
    var type = NAPOPAnimationType.Scale
    
    func duration(d: Double) -> NAPOPAnimation {
        duration = d
        return self
    }
    
    func value(v: CGFloat) -> NAPOPAnimation {
        value = v
        return self
    }
    
    var animation: POPAnimation {
        get {
            var anim: POPBasicAnimation
            switch type {
            case .Scale:
                anim = POPBasicAnimation(propertyNamed: kPOPViewScaleXY)
            }
            anim.duration = duration
            anim.toValue = value
            
            return anim
        }
    }
    
}
