// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct BaseIndexSettings: Codable, JSONEncodable, Hashable {
    /** Creates [replicas](https://www.algolia.com/doc/guides/managing-results/refine-results/sorting/in-depth/replicas/), which are copies of a primary index with the same records but different settings. */
    public var replicas: [String]?
    /** Maximum number of hits accessible through pagination. */
    public var paginationLimitedTo: Int?
    /** Attributes that can't be retrieved at query time. */
    public var unretrievableAttributes: [String]?
    /** Words for which you want to turn off [typo tolerance](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/typo-tolerance/). */
    public var disableTypoToleranceOnWords: [String]?
    /** Attributes in your index to which [Japanese transliteration](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/language-specific-configurations/#japanese-transliteration-and-type-ahead) applies. This will ensure that words indexed in Katakana or Kanji can also be searched in Hiragana. */
    public var attributesToTransliterate: [String]?
    /** Attributes on which to split [camel case](https://wikipedia.org/wiki/Camel_case) words. */
    public var camelCaseAttributes: [String]?
    /** Attributes in your index to which [word segmentation](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/how-to/customize-segmentation/) (decompounding) applies. */
    public var decompoundedAttributes: AnyCodable?
    /** Set the languages of your index, for language-specific processing steps such as [tokenization](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/tokenization/) and [normalization](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/normalization/). */
    public var indexLanguages: [String]?
    /** Attributes for which you want to turn off [prefix matching](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/override-search-engine-defaults/#adjusting-prefix-search). */
    public var disablePrefixOnAttributes: [String]?
    /** Incidates whether the engine compresses arrays with exclusively non-negative integers. When enabled, the compressed arrays may be reordered.  */
    public var allowCompressionOfIntegerArray: Bool?
    /** Numeric attributes that can be used as [numerical filters](https://www.algolia.com/doc/guides/managing-results/rules/detecting-intent/how-to/applying-a-custom-filter-for-a-specific-query/#numerical-filters). */
    public var numericAttributesForFiltering: [String]?
    /** Controls which separators are added to an Algolia index as part of [normalization](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/#what-does-normalization-mean). Separators are all non-letter characters except spaces and currency characters, such as $€£¥. */
    public var separatorsToIndex: String?
    /** [Attributes used for searching](https://www.algolia.com/doc/guides/managing-results/must-do/searchable-attributes/), including determining [if matches at the beginning of a word are important (ordered) or not (unordered)](https://www.algolia.com/doc/guides/managing-results/must-do/searchable-attributes/how-to/configuring-searchable-attributes-the-right-way/#understanding-word-position).  */
    public var searchableAttributes: [String]?
    /** Lets you store custom data in your indices. */
    public var userData: AnyCodable?
    /** A list of characters and their normalized replacements to override Algolia's default [normalization](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/normalization/). */
    public var customNormalization: [String: [String: String]]?
    /** Name of the deduplication attribute to be used with Algolia's [_distinct_ feature](https://www.algolia.com/doc/guides/managing-results/refine-results/grouping/#introducing-algolias-distinct-feature). */
    public var attributeForDistinct: String?

    public init(replicas: [String]? = nil, paginationLimitedTo: Int? = nil, unretrievableAttributes: [String]? = nil, disableTypoToleranceOnWords: [String]? = nil, attributesToTransliterate: [String]? = nil, camelCaseAttributes: [String]? = nil, decompoundedAttributes: AnyCodable? = nil, indexLanguages: [String]? = nil, disablePrefixOnAttributes: [String]? = nil, allowCompressionOfIntegerArray: Bool? = nil, numericAttributesForFiltering: [String]? = nil, separatorsToIndex: String? = nil, searchableAttributes: [String]? = nil, userData: AnyCodable? = nil, customNormalization: [String: [String: String]]? = nil, attributeForDistinct: String? = nil) {
        self.replicas = replicas
        self.paginationLimitedTo = paginationLimitedTo
        self.unretrievableAttributes = unretrievableAttributes
        self.disableTypoToleranceOnWords = disableTypoToleranceOnWords
        self.attributesToTransliterate = attributesToTransliterate
        self.camelCaseAttributes = camelCaseAttributes
        self.decompoundedAttributes = decompoundedAttributes
        self.indexLanguages = indexLanguages
        self.disablePrefixOnAttributes = disablePrefixOnAttributes
        self.allowCompressionOfIntegerArray = allowCompressionOfIntegerArray
        self.numericAttributesForFiltering = numericAttributesForFiltering
        self.separatorsToIndex = separatorsToIndex
        self.searchableAttributes = searchableAttributes
        self.userData = userData
        self.customNormalization = customNormalization
        self.attributeForDistinct = attributeForDistinct
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case replicas
        case paginationLimitedTo
        case unretrievableAttributes
        case disableTypoToleranceOnWords
        case attributesToTransliterate
        case camelCaseAttributes
        case decompoundedAttributes
        case indexLanguages
        case disablePrefixOnAttributes
        case allowCompressionOfIntegerArray
        case numericAttributesForFiltering
        case separatorsToIndex
        case searchableAttributes
        case userData
        case customNormalization
        case attributeForDistinct
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(replicas, forKey: .replicas)
        try container.encodeIfPresent(paginationLimitedTo, forKey: .paginationLimitedTo)
        try container.encodeIfPresent(unretrievableAttributes, forKey: .unretrievableAttributes)
        try container.encodeIfPresent(disableTypoToleranceOnWords, forKey: .disableTypoToleranceOnWords)
        try container.encodeIfPresent(attributesToTransliterate, forKey: .attributesToTransliterate)
        try container.encodeIfPresent(camelCaseAttributes, forKey: .camelCaseAttributes)
        try container.encodeIfPresent(decompoundedAttributes, forKey: .decompoundedAttributes)
        try container.encodeIfPresent(indexLanguages, forKey: .indexLanguages)
        try container.encodeIfPresent(disablePrefixOnAttributes, forKey: .disablePrefixOnAttributes)
        try container.encodeIfPresent(allowCompressionOfIntegerArray, forKey: .allowCompressionOfIntegerArray)
        try container.encodeIfPresent(numericAttributesForFiltering, forKey: .numericAttributesForFiltering)
        try container.encodeIfPresent(separatorsToIndex, forKey: .separatorsToIndex)
        try container.encodeIfPresent(searchableAttributes, forKey: .searchableAttributes)
        try container.encodeIfPresent(userData, forKey: .userData)
        try container.encodeIfPresent(customNormalization, forKey: .customNormalization)
        try container.encodeIfPresent(attributeForDistinct, forKey: .attributeForDistinct)
    }
}
