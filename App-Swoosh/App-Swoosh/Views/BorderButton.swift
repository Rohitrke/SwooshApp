//
//  BorderButton.swift
//  App-Swoosh
//
//  Created by cynoteck Mac Mini on 08/09/17.
//  Copyright © 2017 Cynoteck. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
    }

}
