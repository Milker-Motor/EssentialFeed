//
//  ImageCommentsLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Oleksii Lytvynov-Bohdanov on 20.08.2023.
//  Copyright © 2023 Essential Developer. All rights reserved.
//

import XCTest
import EssentialFeed

class ImageCommentsLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "ImageComments"
        let bundle = Bundle(for: ImageCommentsPresenter.self)
        
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
    
    func test_map_createsViewModels() {
        let now = Date()
        let calendar = Calendar(identifier: .gregorian)
        let locale = Locale(identifier: "en_US_POSIX")
        
        let comments = [
            ImageComment(
                id: UUID(),
                message: "a message",
                createdAt: now.adding(minutes: -5),
                username: "a username"),
            ImageComment(
                id: UUID(),
                message: "another message",
                createdAt: now.adding(days: -1),
                username: "another username")
        ]
        
        let viewModel = ImageCommentsPresenter.map(
            comments,
            currentDate: now,
            calendar: calendar,
            locale: locale
        )
        
        XCTAssertEqual(viewModel.comments, [
            ImageCommentViewModel(
                message: "a message",
                date: "5 minutes ago",
                username: "a username"
            ),
            ImageCommentViewModel(
                message: "another message",
                date: "1 day ago",
                username: "another username"
            )
        ])
    }
}
