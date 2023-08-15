//
//  ImageComment.swift
//  EssentialFeed
//
//  Created by Oleksii Lytvynov-Bohdanov on 15.08.2023.
//  Copyright © 2023 Essential Developer. All rights reserved.
//

import Foundation

public struct ImageComment: Equatable {
    public let id: UUID
    public let message: String
    public let createdAt: Date
    public let username: String
    
    public init(id: UUID, message: String, createdAt: Date, username: String) {
        self.id = id
        self.message = message
        self.createdAt = createdAt
        self.username = username
    }
}
