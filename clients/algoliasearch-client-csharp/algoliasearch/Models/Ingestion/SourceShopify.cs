//
// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
//
using System;
using System.Text;
using System.Linq;
using System.Text.Json.Serialization;
using System.Collections.Generic;
using Algolia.Search.Serializer;
using System.Text.Json;

namespace Algolia.Search.Models.Ingestion;

/// <summary>
/// SourceShopify
/// </summary>
public partial class SourceShopify
{
  /// <summary>
  /// Initializes a new instance of the SourceShopify class.
  /// </summary>
  [JsonConstructor]
  public SourceShopify() { }
  /// <summary>
  /// Initializes a new instance of the SourceShopify class.
  /// </summary>
  /// <param name="shopURL">URL of the Shopify store. (required).</param>
  public SourceShopify(string shopURL)
  {
    ShopURL = shopURL ?? throw new ArgumentNullException(nameof(shopURL));
  }

  /// <summary>
  /// Feature flags for the Shopify source.
  /// </summary>
  /// <value>Feature flags for the Shopify source.</value>
  [JsonPropertyName("featureFlags")]
  public Dictionary<string, object> FeatureFlags { get; set; }

  /// <summary>
  /// URL of the Shopify store.
  /// </summary>
  /// <value>URL of the Shopify store.</value>
  [JsonPropertyName("shopURL")]
  public string ShopURL { get; set; }

  /// <summary>
  /// Returns the string presentation of the object
  /// </summary>
  /// <returns>String presentation of the object</returns>
  public override string ToString()
  {
    StringBuilder sb = new StringBuilder();
    sb.Append("class SourceShopify {\n");
    sb.Append("  FeatureFlags: ").Append(FeatureFlags).Append("\n");
    sb.Append("  ShopURL: ").Append(ShopURL).Append("\n");
    sb.Append("}\n");
    return sb.ToString();
  }

  /// <summary>
  /// Returns the JSON string presentation of the object
  /// </summary>
  /// <returns>JSON string presentation of the object</returns>
  public virtual string ToJson()
  {
    return JsonSerializer.Serialize(this, JsonConfig.Options);
  }

  /// <summary>
  /// Returns true if objects are equal
  /// </summary>
  /// <param name="obj">Object to be compared</param>
  /// <returns>Boolean</returns>
  public override bool Equals(object obj)
  {
    if (obj is not SourceShopify input)
    {
      return false;
    }

    return
        (FeatureFlags == input.FeatureFlags || FeatureFlags != null && input.FeatureFlags != null && FeatureFlags.SequenceEqual(input.FeatureFlags)) &&
        (ShopURL == input.ShopURL || (ShopURL != null && ShopURL.Equals(input.ShopURL)));
  }

  /// <summary>
  /// Gets the hash code
  /// </summary>
  /// <returns>Hash code</returns>
  public override int GetHashCode()
  {
    unchecked // Overflow is fine, just wrap
    {
      int hashCode = 41;
      if (FeatureFlags != null)
      {
        hashCode = (hashCode * 59) + FeatureFlags.GetHashCode();
      }
      if (ShopURL != null)
      {
        hashCode = (hashCode * 59) + ShopURL.GetHashCode();
      }
      return hashCode;
    }
  }

}

