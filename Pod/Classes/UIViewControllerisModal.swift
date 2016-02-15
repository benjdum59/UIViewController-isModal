//
//  UIViewController+isModal.swift
//  UIViewController+isModal
//
//  Created by Benjamin Dumont on 22/10/2015.
//  Copyright © 2015 UIViewController+isModal. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    var isModal: Bool {
        return self.presentingViewController != nil || self.presentingViewController?.presentedViewController == self || self.navigationController?.presentingViewController?.presentedViewController == self.navigationController || self.tabBarController?.presentingViewController?.isKindOfClass(UITabBarController) != nil
    }
}

