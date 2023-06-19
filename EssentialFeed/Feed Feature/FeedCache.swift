//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Oleksii Lytvynov-Bohdanov on 19.06.2023.
//  Copyright © 2023 Essential Developer. All rights reserved.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
