//
//  DimmingPresentationController.swift
//  StoreSearch
//
//  Created by KELVIN LING SHENG SIANG on 03/11/2017.
//  Copyright © 2017 KELVIN LING SHENG SIANG. All rights reserved.
//

import UIKit

class DimmingPresenetationController: UIPresentationController {
    override var shouldRemovePresentersView: Bool {
//        return false to keep underlying view
        return false
    }
}
