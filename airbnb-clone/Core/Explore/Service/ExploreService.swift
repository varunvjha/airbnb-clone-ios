//
//  ExploreService.swift
//  airbnb-clone
//
//  Created by Varun on 26/10/23.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
