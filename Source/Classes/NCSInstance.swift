//
//  RgInstance.swift
//  RgSdk
//
//  Created by Cosmin Coltos on 14/02/2017.
//  Copyright © 2017 Dcodeit. All rights reserved.
//

import Foundation
import UIKit

@objc(NCSInstance) public class NCSInstance: NSObject {
    public static let sharedInstance : NCSInstance = NCSInstance()
    var delegate : NCSDelegate?;
    var cdvVc : NCSViewController?;
    
    private override init() {
        delegate = nil;
    }
    
    public func initialize(delegate : NCSDelegate) {
        self.delegate = delegate;
        self.cdvVc = NCSViewController.init();
        
        UIApplication.shared.keyWindow?.rootViewController?.present(cdvVc!, animated: false, completion: {
            self.delegate?.initFinished();
        });
    }
    
    public func submitScore() {
        UIApplication.shared.keyWindow?.rootViewController?.present(cdvVc!, animated: false, completion: {
            
        });
    }
    
    // Private methods
    
}
