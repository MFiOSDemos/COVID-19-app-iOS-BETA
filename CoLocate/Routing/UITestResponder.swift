//
//  UITestResponder.swift
//  CoLocateInternal
//
//  Created by NHSX.
//  Copyright © 2020 NHSX. All rights reserved.
//

import UIKit

enum UITestResponder {
    
    static func makeWindowForTesting() -> UIWindow? {
        guard ProcessInfo.processInfo.environment["UI_TEST"] != nil else { return nil }
        let window = UIWindow(frame: UIScreen.main.bounds)
        let router = AppRouter(window: window)
        router.route(to: .potential)
        window.makeKeyAndVisible()
        return window
    }
    
}
