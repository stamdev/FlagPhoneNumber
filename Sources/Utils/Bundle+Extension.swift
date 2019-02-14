//
//  Bundle+Extension.swift
//  FlagPhoneNumber
//
//  Created by DeviOS on 07/12/2017.
//

import Foundation

extension Bundle {
	static public var FlagIcons = FlagPhoneNumber()

	static public func FlagPhoneNumber() -> Bundle {
		let bundle = Bundle(for: FPNTextField.self)

		if let path = bundle.path(forResource: "FlagPhoneNumber", ofType: "bundle") {
			return Bundle(path: path)!
		} else {
			return bundle
		}
	}
}

extension UIView {
    
    // Example use: myView.addBorder(toSide: .Left, withColor: UIColor.redColor().CGColor, andThickness: 1.0)
    
    enum ViewSide {
        case Left, Right, Top, Bottom
    }
    
    func addBorder(toSide side: ViewSide, withColor color: CGColor, andThickness thickness: CGFloat) {
        
        let border = CALayer()
        border.backgroundColor = color
        
        switch side {
        case .Left: border.frame = CGRect(x: frame.minX, y: frame.minY, width: thickness, height: frame.height); break
        case .Right: border.frame = CGRect(x: frame.maxX, y: frame.minY, width: thickness, height: frame.height); break
        case .Top: border.frame = CGRect(x: frame.minX, y: frame.minY, width: frame.width, height: thickness); break
        case .Bottom: border.frame = CGRect(x: frame.minX, y: frame.maxY, width: frame.width, height: thickness); break
        }
        
        layer.addSublayer(border)
    }
}
