// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct GetSearchesNoResultsResponse: Codable, JSONEncodable, Hashable {
    /** Searches with no results. */
    public var searches: [SearchNoResultEvent]

    public init(searches: [SearchNoResultEvent]) {
        self.searches = searches
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case searches
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(searches, forKey: .searches)
    }
}
