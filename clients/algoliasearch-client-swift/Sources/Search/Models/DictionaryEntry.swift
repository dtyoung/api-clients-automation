// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

/** Dictionary entry. */
public struct DictionaryEntry: Codable, JSONEncodable, Hashable {
    /** Unique identifier for a dictionary object. */
    public var objectID: String
    /** [Supported language ISO code](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/supported-languages/).  */
    public var language: String
    /** Dictionary entry word. Usage depends on the type of dictionary entry. **`stopwordEntry`** The stop word you want to add or update. If the entry already exists in Algolia's standard dictionary, you can override its behavior by adding it to the custom dictionary and setting its `state` to `disabled`. **`compoundEntry`** When `decomposition` is empty: adds `word` as a compound atom. For example, atom “kino” decomposes the query “kopfkino” into \"kopf\" and \"kino\". When `decomposition` isn't empty: creates a decomposition exception. For example, when decomposition is set to the [\"hund\", \"hutte\"] exception, \"hundehutte\" decomposes into “hund” and “hutte”, discarding the linking \"e\".  */
    public var word: String?
    /** Compound dictionary [word declensions](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/how-to/customize-plurals-and-other-declensions/). If the entry already exists in Algolia's standard dictionary, you can override its behavior by adding it to the custom dictionary and setting its `state` to `disabled`.  */
    public var words: [String]?
    /** For compound entries, governs the behavior of the `word` parameter. */
    public var decomposition: [String]?
    public var state: DictionaryEntryState?

    public init(objectID: String, language: String, word: String? = nil, words: [String]? = nil, decomposition: [String]? = nil, state: DictionaryEntryState? = nil) {
        self.objectID = objectID
        self.language = language
        self.word = word
        self.words = words
        self.decomposition = decomposition
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case objectID
        case language
        case word
        case words
        case decomposition
        case state
    }

    public var additionalProperties: [String: AnyCodable] = [:]

    public subscript(key: String) -> AnyCodable? {
        get {
            if let value = additionalProperties[key] {
                return value
            }
            return nil
        }

        set {
            additionalProperties[key] = newValue
        }
    }

    public init(from dictionary: [String: AnyCodable]) throws {
        guard let objectID = dictionary["objectID"]?.value as? String else {
            throw GenericError(description: "Failed to cast")
        }
        self.objectID = objectID
        guard let language = dictionary["language"]?.value as? String else {
            throw GenericError(description: "Failed to cast")
        }
        self.language = language
        word = dictionary["word"]?.value as? String

        words = dictionary["words"]?.value as? [String]

        decomposition = dictionary["decomposition"]?.value as? [String]

        state = dictionary["state"]?.value as? DictionaryEntryState

        for (key, value) in dictionary {
            switch key {
            case "objectID", "language", "word", "words", "decomposition", "state":
                continue
            default:
                additionalProperties[key] = value
            }
        }
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(objectID, forKey: .objectID)
        try container.encode(language, forKey: .language)
        try container.encodeIfPresent(word, forKey: .word)
        try container.encodeIfPresent(words, forKey: .words)
        try container.encodeIfPresent(decomposition, forKey: .decomposition)
        try container.encodeIfPresent(state, forKey: .state)
        var additionalPropertiesContainer = encoder.container(keyedBy: String.self)
        try additionalPropertiesContainer.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        objectID = try container.decode(String.self, forKey: .objectID)
        language = try container.decode(String.self, forKey: .language)
        word = try container.decodeIfPresent(String.self, forKey: .word)
        words = try container.decodeIfPresent([String].self, forKey: .words)
        decomposition = try container.decodeIfPresent([String].self, forKey: .decomposition)
        state = try container.decodeIfPresent(DictionaryEntryState.self, forKey: .state)
        var nonAdditionalPropertyKeys = Set<String>()
        nonAdditionalPropertyKeys.insert("objectID")
        nonAdditionalPropertyKeys.insert("language")
        nonAdditionalPropertyKeys.insert("word")
        nonAdditionalPropertyKeys.insert("words")
        nonAdditionalPropertyKeys.insert("decomposition")
        nonAdditionalPropertyKeys.insert("state")
        let additionalPropertiesContainer = try decoder.container(keyedBy: String.self)
        additionalProperties = try additionalPropertiesContainer.decodeMap(AnyCodable.self, excludedKeys: nonAdditionalPropertyKeys)
    }
}
