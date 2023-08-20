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
    
}
