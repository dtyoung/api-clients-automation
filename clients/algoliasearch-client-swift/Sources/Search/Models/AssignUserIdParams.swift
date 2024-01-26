// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

/** Assign userID parameters. */
public struct AssignUserIdParams: Codable, JSONEncodable, Hashable {
    /** Cluster name. */
    public var cluster: String

    public init(cluster: String) {
        self.cluster = cluster
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cluster
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(cluster, forKey: .cluster)
    }
}
