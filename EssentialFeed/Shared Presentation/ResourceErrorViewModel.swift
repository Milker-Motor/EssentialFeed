//
//  ResourceErrorViewModel.swift
//  EssentialFeed
//
//  Created by Oleksii Lytvynov-Bohdanov on 18.08.2023.
//  Copyright © 2023 Essential Developer. All rights reserved.
//

import Foundation

public struct ResourceErrorViewModel {
    public let message: String?
    
    static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
}
