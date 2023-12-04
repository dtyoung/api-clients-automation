//
// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
//

using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using FileParameter = Algolia.Search.Recommend.Client.FileParameter;
using OpenAPIDateConverter = Algolia.Search.Recommend.Client.OpenAPIDateConverter;

namespace Algolia.Search.Recommend.Models
{
  /// <summary>
  /// Trending items model.
  /// </summary>
  /// <value>Trending items model.</value>
  [JsonConverter(typeof(StringEnumConverter))]
  public enum TrendingItemsModel
  {
    /// <summary>
    /// Enum TrendingItems for value: trending-items
    /// </summary>
    [EnumMember(Value = "trending-items")]
    TrendingItems = 1
  }

}
