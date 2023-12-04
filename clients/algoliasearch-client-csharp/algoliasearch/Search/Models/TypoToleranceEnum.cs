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
using FileParameter = Algolia.Search.Search.Client.FileParameter;
using OpenAPIDateConverter = Algolia.Search.Search.Client.OpenAPIDateConverter;

namespace Algolia.Search.Search.Models
{
  /// <summary>
  /// Defines typoToleranceEnum
  /// </summary>
  [JsonConverter(typeof(StringEnumConverter))]
  public enum TypoToleranceEnum
  {
    /// <summary>
    /// Enum Min for value: min
    /// </summary>
    [EnumMember(Value = "min")]
    Min = 1,

    /// <summary>
    /// Enum Strict for value: strict
    /// </summary>
    [EnumMember(Value = "strict")]
    Strict = 2
  }

}
