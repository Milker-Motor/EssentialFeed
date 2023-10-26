//
//  ImageCommentsEndpoint.swift
//  EssentialFeed
//
//  Created by Oleksii Lytvynov-Bohdanov on 25.10.2023.
//  Copyright © 2023 Essential Developer. All rights reserved.
//

import Foundation

public enum ImageCommentsEndpoint {
    case get(UUID)
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case let .get(id):
            return baseURL.appendingPathComponent("/v1/image/\(id)/comments")
        }
    }
}
