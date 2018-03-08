//
//  UIImageExt.swift
//  bigmarker
//
//  Created by Han Qing on 13/12/2017.
//  Copyright © 2017 hanqing. All rights reserved.
//
import UIKit

extension UIImage {
    func makeImageWithColorAndSize(_ color: UIColor, size: CGSize) -> UIImage {
        UIGraphicsBeginImageContext(size)
        color.setFill()
        UIRectFill(CGRect(x: 0, y: 0, width: size.width, height: size.height))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
