// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

/** The response from the API after a task creation. */
public struct TaskCreateResponse: Codable, JSONEncodable, Hashable {
    /** The task UUID. */
    public var taskID: String
    /** Date of creation (RFC3339 format). */
    public var createdAt: String

    public init(taskID: String, createdAt: String) {
        self.taskID = taskID
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case taskID
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(taskID, forKey: .taskID)
        try container.encode(createdAt, forKey: .createdAt)
    }
}
