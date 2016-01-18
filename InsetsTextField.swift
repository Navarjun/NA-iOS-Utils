//
//  InsetsTextField.swift
//  CapitalOneCP
//
//  Created by Navarjun Singh on 19/08/15.
//  Copyright (c) 2015 ClickLabs. All rights reserved.
//

import UIKit

class InsetsTextField: UITextField {
    
    @IBInspectable var inset: CGFloat = 5

    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, inset, inset)
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, inset, inset)
    }

}
