//
//  NCSDelegate.swift
//  NrgClientSdk
//
//  Created by Kamen Goranchev on 15/02/2017.
//  Copyright © 2017 Kamen Goranchev. All rights reserved.
//

import Foundation

@objc public protocol NCSDelegate: UIApplicationDelegate {
    func initFinished();
    func startGame();
}
