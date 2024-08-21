/** Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT. */
package com.algolia.client.model.ingestion

import com.algolia.client.exception.AlgoliaClientException
import com.algolia.client.extensions.internal.*
import kotlinx.serialization.*
import kotlinx.serialization.builtins.*
import kotlinx.serialization.descriptors.*
import kotlinx.serialization.encoding.*
import kotlinx.serialization.json.*

/**
 * SourceInput
 *
 * Implementations:
 * - [SourceBigCommerce]
 * - [SourceBigQuery]
 * - [SourceCSV]
 * - [SourceCommercetools]
 * - [SourceDocker]
 * - [SourceGA4BigQueryExport]
 * - [SourceJSON]
 * - [SourceShopify]
 */
@Serializable(SourceInputSerializer::class)
public sealed interface SourceInput {

  public companion object {
  }
}

internal class SourceInputSerializer : JsonContentPolymorphicSerializer<SourceInput>(SourceInput::class) {
  override fun selectDeserializer(element: JsonElement): DeserializationStrategy<SourceInput> {
    return when {
      element is JsonObject && element.containsKey("registry") && element.containsKey("image") && element.containsKey("imageType") && element.containsKey("configuration") -> SourceDocker.serializer()
      element is JsonObject && element.containsKey("projectID") && element.containsKey("datasetID") && element.containsKey("tablePrefix") -> SourceGA4BigQueryExport.serializer()
      element is JsonObject && element.containsKey("projectKey") -> SourceCommercetools.serializer()
      element is JsonObject && element.containsKey("storeHash") -> SourceBigCommerce.serializer()
      element is JsonObject && element.containsKey("projectID") -> SourceBigQuery.serializer()
      element is JsonObject && element.containsKey("shopURL") -> SourceShopify.serializer()
      element is JsonObject -> SourceJSON.serializer()
      element is JsonObject -> SourceCSV.serializer()
      else -> throw AlgoliaClientException("Failed to deserialize json element: $element")
    }
  }
}
