//
//  UIImage+Extension.swift
//  appleStore
//
//  Created by Valery on 15.07.2021.
//

import UIKit

extension UIImage {
    func resizeImage(to size: CGSize) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { _ in
            draw(in: CGRect(origin: .zero, size: size))
        }
    }
}
