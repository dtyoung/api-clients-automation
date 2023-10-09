/** Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT. */
package com.algolia.client.model.recommend

import kotlinx.serialization.*
import kotlinx.serialization.json.*

/**
 * BaseSearchParamsWithoutQuery
 *
 * @param similarQuery Overrides the query parameter and performs a more generic search.
 * @param filters [Filter](https://www.algolia.com/doc/guides/managing-results/refine-results/filtering/) the query with numeric, facet, or tag filters.
 * @param facetFilters
 * @param optionalFilters
 * @param numericFilters
 * @param tagFilters
 * @param sumOrFiltersScores Determines how to calculate [filter scores](https://www.algolia.com/doc/guides/managing-results/refine-results/filtering/in-depth/filter-scoring/#accumulating-scores-with-sumorfiltersscores). If `false`, maximum score is kept. If `true`, score is summed.
 * @param restrictSearchableAttributes Restricts a query to only look at a subset of your [searchable attributes](https://www.algolia.com/doc/guides/managing-results/must-do/searchable-attributes/).
 * @param facets Returns [facets](https://www.algolia.com/doc/guides/managing-results/refine-results/faceting/#contextual-facet-values-and-counts), their facet values, and the number of matching facet values.
 * @param facetingAfterDistinct Forces faceting to be applied after [de-duplication](https://www.algolia.com/doc/guides/managing-results/refine-results/grouping/) (with the distinct feature). Alternatively, the `afterDistinct` [modifier](https://www.algolia.com/doc/api-reference/api-parameters/attributesForFaceting/#modifiers) of `attributesForFaceting` allows for more granular control.
 * @param page Page to retrieve (the first page is `0`, not `1`).
 * @param offset Specifies the offset of the first hit to return. > **Note**: Using `page` and `hitsPerPage` is the recommended method for [paging results](https://www.algolia.com/doc/guides/building-search-ui/ui-and-ux-patterns/pagination/js/). However, you can use `offset` and `length` to implement [an alternative approach to paging](https://www.algolia.com/doc/guides/building-search-ui/ui-and-ux-patterns/pagination/js/#retrieving-a-subset-of-records-with-offset-and-length).
 * @param length Sets the number of hits to retrieve (for use with `offset`). > **Note**: Using `page` and `hitsPerPage` is the recommended method for [paging results](https://www.algolia.com/doc/guides/building-search-ui/ui-and-ux-patterns/pagination/js/). However, you can use `offset` and `length` to implement [an alternative approach to paging](https://www.algolia.com/doc/guides/building-search-ui/ui-and-ux-patterns/pagination/js/#retrieving-a-subset-of-records-with-offset-and-length).
 * @param aroundLatLng Search for entries [around a central location](https://www.algolia.com/doc/guides/managing-results/refine-results/geolocation/#filter-around-a-central-point), enabling a geographical search within a circular area.
 * @param aroundLatLngViaIP Search for entries around a location. The location is automatically computed from the requester's IP address.
 * @param aroundRadius
 * @param aroundPrecision
 * @param minimumAroundRadius Minimum radius (in meters) used for a geographical search when `aroundRadius` isn't set.
 * @param insideBoundingBox Search inside a [rectangular area](https://www.algolia.com/doc/guides/managing-results/refine-results/geolocation/#filtering-inside-rectangular-or-polygonal-areas) (in geographical coordinates).
 * @param insidePolygon Search inside a [polygon](https://www.algolia.com/doc/guides/managing-results/refine-results/geolocation/#filtering-inside-rectangular-or-polygonal-areas) (in geographical coordinates).
 * @param naturalLanguages Changes the default values of parameters that work best for a natural language query, such as `ignorePlurals`, `removeStopWords`, `removeWordsIfNoResults`, `analyticsTags`, and `ruleContexts`. These parameters work well together when the query consists of fuller natural language strings instead of keywords, for example when processing voice search queries.
 * @param ruleContexts Assigns [rule contexts](https://www.algolia.com/doc/guides/managing-results/rules/rules-overview/how-to/customize-search-results-by-platform/#whats-a-context) to search queries.
 * @param personalizationImpact Defines how much [Personalization affects results](https://www.algolia.com/doc/guides/personalization/personalizing-results/in-depth/configuring-personalization/#understanding-personalization-impact).
 * @param userToken Associates a [user token](https://www.algolia.com/doc/guides/sending-events/concepts/usertoken/) with the current search.
 * @param getRankingInfo Incidates whether the search response includes [detailed ranking information](https://www.algolia.com/doc/guides/building-search-ui/going-further/backend-search/in-depth/understanding-the-api-response/#ranking-information).
 * @param explain Enriches the API's response with information about how the query was processed.
 * @param synonyms Whether to take into account an index's synonyms for a particular search.
 * @param clickAnalytics Indicates whether a query ID parameter is included in the search response. This is required for [tracking click and conversion events](https://www.algolia.com/doc/guides/sending-events/concepts/event-types/#events-related-to-algolia-requests).
 * @param analytics Indicates whether this query will be included in [analytics](https://www.algolia.com/doc/guides/search-analytics/guides/exclude-queries/).
 * @param analyticsTags Tags to apply to the query for [segmenting analytics data](https://www.algolia.com/doc/guides/search-analytics/guides/segments/).
 * @param percentileComputation Whether to include or exclude a query from the processing-time percentile computation.
 * @param enableABTest Incidates whether this search will be considered in A/B testing.
 */
@Serializable
public data class BaseSearchParamsWithoutQuery(

  /** Overrides the query parameter and performs a more generic search. */
  @SerialName(value = "similarQuery") val similarQuery: String? = null,

  /** [Filter](https://www.algolia.com/doc/guides/managing-results/refine-results/filtering/) the query with numeric, facet, or tag filters.  */
  @SerialName(value = "filters") val filters: String? = null,

  @SerialName(value = "facetFilters") val facetFilters: FacetFilters? = null,

  @SerialName(value = "optionalFilters") val optionalFilters: OptionalFilters? = null,

  @SerialName(value = "numericFilters") val numericFilters: NumericFilters? = null,

  @SerialName(value = "tagFilters") val tagFilters: TagFilters? = null,

  /** Determines how to calculate [filter scores](https://www.algolia.com/doc/guides/managing-results/refine-results/filtering/in-depth/filter-scoring/#accumulating-scores-with-sumorfiltersscores). If `false`, maximum score is kept. If `true`, score is summed.  */
  @SerialName(value = "sumOrFiltersScores") val sumOrFiltersScores: Boolean? = null,

  /** Restricts a query to only look at a subset of your [searchable attributes](https://www.algolia.com/doc/guides/managing-results/must-do/searchable-attributes/). */
  @SerialName(value = "restrictSearchableAttributes") val restrictSearchableAttributes: List<String>? = null,

  /** Returns [facets](https://www.algolia.com/doc/guides/managing-results/refine-results/faceting/#contextual-facet-values-and-counts), their facet values, and the number of matching facet values. */
  @SerialName(value = "facets") val facets: List<String>? = null,

  /** Forces faceting to be applied after [de-duplication](https://www.algolia.com/doc/guides/managing-results/refine-results/grouping/) (with the distinct feature). Alternatively, the `afterDistinct` [modifier](https://www.algolia.com/doc/api-reference/api-parameters/attributesForFaceting/#modifiers) of `attributesForFaceting` allows for more granular control.  */
  @SerialName(value = "facetingAfterDistinct") val facetingAfterDistinct: Boolean? = null,

  /** Page to retrieve (the first page is `0`, not `1`). */
  @SerialName(value = "page") val page: Int? = null,

  /** Specifies the offset of the first hit to return. > **Note**: Using `page` and `hitsPerPage` is the recommended method for [paging results](https://www.algolia.com/doc/guides/building-search-ui/ui-and-ux-patterns/pagination/js/). However, you can use `offset` and `length` to implement [an alternative approach to paging](https://www.algolia.com/doc/guides/building-search-ui/ui-and-ux-patterns/pagination/js/#retrieving-a-subset-of-records-with-offset-and-length).  */
  @SerialName(value = "offset") val offset: Int? = null,

  /** Sets the number of hits to retrieve (for use with `offset`). > **Note**: Using `page` and `hitsPerPage` is the recommended method for [paging results](https://www.algolia.com/doc/guides/building-search-ui/ui-and-ux-patterns/pagination/js/). However, you can use `offset` and `length` to implement [an alternative approach to paging](https://www.algolia.com/doc/guides/building-search-ui/ui-and-ux-patterns/pagination/js/#retrieving-a-subset-of-records-with-offset-and-length).  */
  @SerialName(value = "length") val length: Int? = null,

  /** Search for entries [around a central location](https://www.algolia.com/doc/guides/managing-results/refine-results/geolocation/#filter-around-a-central-point), enabling a geographical search within a circular area. */
  @SerialName(value = "aroundLatLng") val aroundLatLng: String? = null,

  /** Search for entries around a location. The location is automatically computed from the requester's IP address. */
  @SerialName(value = "aroundLatLngViaIP") val aroundLatLngViaIP: Boolean? = null,

  @SerialName(value = "aroundRadius") val aroundRadius: AroundRadius? = null,

  @SerialName(value = "aroundPrecision") val aroundPrecision: AroundPrecision? = null,

  /** Minimum radius (in meters) used for a geographical search when `aroundRadius` isn't set. */
  @SerialName(value = "minimumAroundRadius") val minimumAroundRadius: Int? = null,

  /** Search inside a [rectangular area](https://www.algolia.com/doc/guides/managing-results/refine-results/geolocation/#filtering-inside-rectangular-or-polygonal-areas) (in geographical coordinates). */
  @SerialName(value = "insideBoundingBox") val insideBoundingBox: List<List<Double>>? = null,

  /** Search inside a [polygon](https://www.algolia.com/doc/guides/managing-results/refine-results/geolocation/#filtering-inside-rectangular-or-polygonal-areas) (in geographical coordinates). */
  @SerialName(value = "insidePolygon") val insidePolygon: List<List<Double>>? = null,

  /** Changes the default values of parameters that work best for a natural language query, such as `ignorePlurals`, `removeStopWords`, `removeWordsIfNoResults`, `analyticsTags`, and `ruleContexts`. These parameters work well together when the query consists of fuller natural language strings instead of keywords, for example when processing voice search queries. */
  @SerialName(value = "naturalLanguages") val naturalLanguages: List<String>? = null,

  /** Assigns [rule contexts](https://www.algolia.com/doc/guides/managing-results/rules/rules-overview/how-to/customize-search-results-by-platform/#whats-a-context) to search queries. */
  @SerialName(value = "ruleContexts") val ruleContexts: List<String>? = null,

  /** Defines how much [Personalization affects results](https://www.algolia.com/doc/guides/personalization/personalizing-results/in-depth/configuring-personalization/#understanding-personalization-impact). */
  @SerialName(value = "personalizationImpact") val personalizationImpact: Int? = null,

  /** Associates a [user token](https://www.algolia.com/doc/guides/sending-events/concepts/usertoken/) with the current search. */
  @SerialName(value = "userToken") val userToken: String? = null,

  /** Incidates whether the search response includes [detailed ranking information](https://www.algolia.com/doc/guides/building-search-ui/going-further/backend-search/in-depth/understanding-the-api-response/#ranking-information). */
  @SerialName(value = "getRankingInfo") val getRankingInfo: Boolean? = null,

  /** Enriches the API's response with information about how the query was processed. */
  @SerialName(value = "explain") val explain: List<String>? = null,

  /** Whether to take into account an index's synonyms for a particular search. */
  @SerialName(value = "synonyms") val synonyms: Boolean? = null,

  /** Indicates whether a query ID parameter is included in the search response. This is required for [tracking click and conversion events](https://www.algolia.com/doc/guides/sending-events/concepts/event-types/#events-related-to-algolia-requests). */
  @SerialName(value = "clickAnalytics") val clickAnalytics: Boolean? = null,

  /** Indicates whether this query will be included in [analytics](https://www.algolia.com/doc/guides/search-analytics/guides/exclude-queries/). */
  @SerialName(value = "analytics") val analytics: Boolean? = null,

  /** Tags to apply to the query for [segmenting analytics data](https://www.algolia.com/doc/guides/search-analytics/guides/segments/). */
  @SerialName(value = "analyticsTags") val analyticsTags: List<String>? = null,

  /** Whether to include or exclude a query from the processing-time percentile computation. */
  @SerialName(value = "percentileComputation") val percentileComputation: Boolean? = null,

  /** Incidates whether this search will be considered in A/B testing. */
  @SerialName(value = "enableABTest") val enableABTest: Boolean? = null,
)
