/** Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT. */
package com.algolia.client.model.search

import com.algolia.client.extensions.internal.*
import kotlinx.serialization.*
import kotlinx.serialization.descriptors.*
import kotlinx.serialization.encoding.*
import kotlinx.serialization.json.*

/**
 * BaseSearchResponse
 *
 * @param hitsPerPage Number of hits per page.
 * @param nbHits Number of hits the search query matched.
 * @param nbPages Number of pages of results for the current query.
 * @param page Page to retrieve (the first page is `0`, not `1`).
 * @param processingTimeMS Time the server took to process the request, in milliseconds.
 * @param abTestID A/B test ID. This is only included in the response for indices that are part of an A/B test.
 * @param abTestVariantID Variant ID. This is only included in the response for indices that are part of an A/B test.
 * @param aroundLatLng Computed geographical location.
 * @param automaticRadius Automatically-computed radius.
 * @param exhaustive
 * @param exhaustiveFacetsCount See the `facetsCount` field of the `exhaustive` object in the response.
 * @param exhaustiveNbHits See the `nbHits` field of the `exhaustive` object in the response.
 * @param exhaustiveTypo See the `typo` field of the `exhaustive` object in the response.
 * @param facets Mapping of each facet name to the corresponding facet counts.
 * @param facetsStats Statistics for numerical facets.
 * @param index Index name used for the query.
 * @param indexUsed Index name used for the query. During A/B testing, the targeted index isn't always the index used by the query.
 * @param message Warnings about the query.
 * @param nbSortedHits Number of hits selected and sorted by the relevant sort algorithm.
 * @param parsedQuery Post-[normalization](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/#what-does-normalization-mean) query string that will be searched.
 * @param processingTimingsMS Experimental. List of processing steps and their times, in milliseconds. You can use this list to investigate performance issues.
 * @param queryAfterRemoval Markup text indicating which parts of the original query have been removed to retrieve a non-empty result set.
 * @param redirect
 * @param renderingContent
 * @param serverTimeMS Time the server took to process the request, in milliseconds.
 * @param serverUsed Host name of the server that processed the request.
 * @param userData Lets you store custom data in your indices.
 * @param queryID Unique identifier for the query. This is used for [click analytics](https://www.algolia.com/doc/guides/analytics/click-analytics/).
 */
@Serializable(BaseSearchResponseSerializer::class)
public data class BaseSearchResponse(

  /** Number of hits per page. */
  val hitsPerPage: Int,

  /** Number of hits the search query matched. */
  val nbHits: Int,

  /** Number of pages of results for the current query. */
  val nbPages: Int,

  /** Page to retrieve (the first page is `0`, not `1`). */
  val page: Int,

  /** Time the server took to process the request, in milliseconds. */
  val processingTimeMS: Int,

  /** A/B test ID. This is only included in the response for indices that are part of an A/B test. */
  val abTestID: Int? = null,

  /** Variant ID. This is only included in the response for indices that are part of an A/B test. */
  val abTestVariantID: Int? = null,

  /** Computed geographical location. */
  val aroundLatLng: String? = null,

  /** Automatically-computed radius. */
  val automaticRadius: String? = null,

  val exhaustive: Exhaustive? = null,

  /** See the `facetsCount` field of the `exhaustive` object in the response. */
  @Deprecated(message = "This property is deprecated.")
  val exhaustiveFacetsCount: Boolean? = null,

  /** See the `nbHits` field of the `exhaustive` object in the response. */
  @Deprecated(message = "This property is deprecated.")
  val exhaustiveNbHits: Boolean? = null,

  /** See the `typo` field of the `exhaustive` object in the response. */
  @Deprecated(message = "This property is deprecated.")
  val exhaustiveTypo: Boolean? = null,

  /** Mapping of each facet name to the corresponding facet counts. */
  val facets: Map<kotlin.String, Map<kotlin.String, Int>>? = null,

  /** Statistics for numerical facets. */
  val facetsStats: Map<kotlin.String, FacetsStats>? = null,

  /** Index name used for the query. */
  val index: String? = null,

  /** Index name used for the query. During A/B testing, the targeted index isn't always the index used by the query. */
  val indexUsed: String? = null,

  /** Warnings about the query. */
  val message: String? = null,

  /** Number of hits selected and sorted by the relevant sort algorithm. */
  val nbSortedHits: Int? = null,

  /** Post-[normalization](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/#what-does-normalization-mean) query string that will be searched. */
  val parsedQuery: String? = null,

  /** Experimental. List of processing steps and their times, in milliseconds. You can use this list to investigate performance issues. */
  val processingTimingsMS: JsonObject? = null,

  /** Markup text indicating which parts of the original query have been removed to retrieve a non-empty result set. */
  val queryAfterRemoval: String? = null,

  val redirect: Redirect? = null,

  val renderingContent: RenderingContent? = null,

  /** Time the server took to process the request, in milliseconds. */
  val serverTimeMS: Int? = null,

  /** Host name of the server that processed the request. */
  val serverUsed: String? = null,

  /** Lets you store custom data in your indices. */
  val userData: JsonElement? = null,

  /** Unique identifier for the query. This is used for [click analytics](https://www.algolia.com/doc/guides/analytics/click-analytics/). */
  val queryID: String? = null,

  val additionalProperties: Map<String, JsonElement>? = null,
)

internal object BaseSearchResponseSerializer : KSerializer<BaseSearchResponse> {

  override val descriptor: SerialDescriptor = buildClassSerialDescriptor("BaseSearchResponse") {
    element<Int>("hitsPerPage")
    element<Int>("nbHits")
    element<Int>("nbPages")
    element<Int>("page")
    element<Int>("processingTimeMS")
    element<Int>("abTestID", isOptional = true)
    element<Int>("abTestVariantID", isOptional = true)
    element<String>("aroundLatLng", isOptional = true)
    element<String>("automaticRadius", isOptional = true)
    element<Exhaustive>("exhaustive", isOptional = true)
    element<Boolean>("exhaustiveFacetsCount", isOptional = true)
    element<Boolean>("exhaustiveNbHits", isOptional = true)
    element<Boolean>("exhaustiveTypo", isOptional = true)
    element<Map<kotlin.String, Map<kotlin.String, Int>>>("facets", isOptional = true)
    element<Map<kotlin.String, FacetsStats>>("facets_stats", isOptional = true)
    element<String>("index", isOptional = true)
    element<String>("indexUsed", isOptional = true)
    element<String>("message", isOptional = true)
    element<Int>("nbSortedHits", isOptional = true)
    element<String>("parsedQuery", isOptional = true)
    element<JsonObject>("processingTimingsMS", isOptional = true)
    element<String>("queryAfterRemoval", isOptional = true)
    element<Redirect>("redirect", isOptional = true)
    element<RenderingContent>("renderingContent", isOptional = true)
    element<Int>("serverTimeMS", isOptional = true)
    element<String>("serverUsed", isOptional = true)
    element<Any>("userData", isOptional = true)
    element<String>("queryID", isOptional = true)
  }

  override fun deserialize(decoder: Decoder): BaseSearchResponse {
    val input = decoder.asJsonDecoder()
    val tree = input.decodeJsonObject()
    return BaseSearchResponse(
      hitsPerPage = tree.getValue("hitsPerPage").let { input.json.decodeFromJsonElement(it) },
      nbHits = tree.getValue("nbHits").let { input.json.decodeFromJsonElement(it) },
      nbPages = tree.getValue("nbPages").let { input.json.decodeFromJsonElement(it) },
      page = tree.getValue("page").let { input.json.decodeFromJsonElement(it) },
      processingTimeMS = tree.getValue("processingTimeMS").let { input.json.decodeFromJsonElement(it) },
      abTestID = tree["abTestID"]?.let { input.json.decodeFromJsonElement(it) },
      abTestVariantID = tree["abTestVariantID"]?.let { input.json.decodeFromJsonElement(it) },
      aroundLatLng = tree["aroundLatLng"]?.let { input.json.decodeFromJsonElement(it) },
      automaticRadius = tree["automaticRadius"]?.let { input.json.decodeFromJsonElement(it) },
      exhaustive = tree["exhaustive"]?.let { input.json.decodeFromJsonElement(it) },
      exhaustiveFacetsCount = tree["exhaustiveFacetsCount"]?.let { input.json.decodeFromJsonElement(it) },
      exhaustiveNbHits = tree["exhaustiveNbHits"]?.let { input.json.decodeFromJsonElement(it) },
      exhaustiveTypo = tree["exhaustiveTypo"]?.let { input.json.decodeFromJsonElement(it) },
      facets = tree["facets"]?.let { input.json.decodeFromJsonElement(it) },
      facetsStats = tree["facets_stats"]?.let { input.json.decodeFromJsonElement(it) },
      index = tree["index"]?.let { input.json.decodeFromJsonElement(it) },
      indexUsed = tree["indexUsed"]?.let { input.json.decodeFromJsonElement(it) },
      message = tree["message"]?.let { input.json.decodeFromJsonElement(it) },
      nbSortedHits = tree["nbSortedHits"]?.let { input.json.decodeFromJsonElement(it) },
      parsedQuery = tree["parsedQuery"]?.let { input.json.decodeFromJsonElement(it) },
      processingTimingsMS = tree["processingTimingsMS"]?.let { input.json.decodeFromJsonElement(it) },
      queryAfterRemoval = tree["queryAfterRemoval"]?.let { input.json.decodeFromJsonElement(it) },
      redirect = tree["redirect"]?.let { input.json.decodeFromJsonElement(it) },
      renderingContent = tree["renderingContent"]?.let { input.json.decodeFromJsonElement(it) },
      serverTimeMS = tree["serverTimeMS"]?.let { input.json.decodeFromJsonElement(it) },
      serverUsed = tree["serverUsed"]?.let { input.json.decodeFromJsonElement(it) },
      userData = tree["userData"]?.let { input.json.decodeFromJsonElement(it) },
      queryID = tree["queryID"]?.let { input.json.decodeFromJsonElement(it) },
      additionalProperties = tree.filterKeys { it !in descriptor.elementNames },
    )
  }

  override fun serialize(encoder: Encoder, value: BaseSearchResponse) {
    val output = encoder.asJsonEncoder()
    val json = buildJsonObject {
      put("hitsPerPage", output.json.encodeToJsonElement(value.hitsPerPage))
      put("nbHits", output.json.encodeToJsonElement(value.nbHits))
      put("nbPages", output.json.encodeToJsonElement(value.nbPages))
      put("page", output.json.encodeToJsonElement(value.page))
      put("processingTimeMS", output.json.encodeToJsonElement(value.processingTimeMS))
      value.abTestID?.let { put("abTestID", output.json.encodeToJsonElement(it)) }
      value.abTestVariantID?.let { put("abTestVariantID", output.json.encodeToJsonElement(it)) }
      value.aroundLatLng?.let { put("aroundLatLng", output.json.encodeToJsonElement(it)) }
      value.automaticRadius?.let { put("automaticRadius", output.json.encodeToJsonElement(it)) }
      value.exhaustive?.let { put("exhaustive", output.json.encodeToJsonElement(it)) }
      value.exhaustiveFacetsCount?.let { put("exhaustiveFacetsCount", output.json.encodeToJsonElement(it)) }
      value.exhaustiveNbHits?.let { put("exhaustiveNbHits", output.json.encodeToJsonElement(it)) }
      value.exhaustiveTypo?.let { put("exhaustiveTypo", output.json.encodeToJsonElement(it)) }
      value.facets?.let { put("facets", output.json.encodeToJsonElement(it)) }
      value.facetsStats?.let { put("facets_stats", output.json.encodeToJsonElement(it)) }
      value.index?.let { put("index", output.json.encodeToJsonElement(it)) }
      value.indexUsed?.let { put("indexUsed", output.json.encodeToJsonElement(it)) }
      value.message?.let { put("message", output.json.encodeToJsonElement(it)) }
      value.nbSortedHits?.let { put("nbSortedHits", output.json.encodeToJsonElement(it)) }
      value.parsedQuery?.let { put("parsedQuery", output.json.encodeToJsonElement(it)) }
      value.processingTimingsMS?.let { put("processingTimingsMS", output.json.encodeToJsonElement(it)) }
      value.queryAfterRemoval?.let { put("queryAfterRemoval", output.json.encodeToJsonElement(it)) }
      value.redirect?.let { put("redirect", output.json.encodeToJsonElement(it)) }
      value.renderingContent?.let { put("renderingContent", output.json.encodeToJsonElement(it)) }
      value.serverTimeMS?.let { put("serverTimeMS", output.json.encodeToJsonElement(it)) }
      value.serverUsed?.let { put("serverUsed", output.json.encodeToJsonElement(it)) }
      value.userData?.let { put("userData", output.json.encodeToJsonElement(it)) }
      value.queryID?.let { put("queryID", output.json.encodeToJsonElement(it)) }
      value.additionalProperties?.onEach { (key, element) -> put(key, element) }
    }
    (encoder as JsonEncoder).encodeJsonElement(json)
  }
}
