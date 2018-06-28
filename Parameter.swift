//
//  Parameter.swift
//  BitcoinPaymentURI
//
//  Created by Sandro Machado on 12/07/16.
//  Copyright © 2016 Sandro. All rights reserved.
//

import Foundation

/// Parameter model.
open class Parameter {
    
    /// The paramenter value.
    open fileprivate(set) var value: String
    
    /// A boolean indicating if the parameter is required.
    open fileprivate(set) var required: Bool

    /**
      Constructor.
     
      - parameter value : The parameter value.
      - parameter required : A boolean indicating if the parameter is required.
    */
    public init(value: String, required: Bool) {
        self.value = value
        self.required = required
    }

}
