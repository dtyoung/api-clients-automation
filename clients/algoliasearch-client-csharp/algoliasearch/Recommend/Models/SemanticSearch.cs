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
using Algolia.Search.Models;

namespace Algolia.Search.Models.Recommend
{
  /// <summary>
  /// Settings for the semantic search part of NeuralSearch. Only used when &#x60;mode&#x60; is _neuralSearch_. 
  /// </summary>
  [DataContract(Name = "semanticSearch")]
  [JsonObject(MemberSerialization.OptOut)]
  public partial class SemanticSearch
  {
    /// <summary>
    /// Initializes a new instance of the <see cref="SemanticSearch" /> class.
    /// </summary>
    public SemanticSearch()
    {
    }

    /// <summary>
    /// Indices from which to collect click and conversion events. If null, the current index and replica group will be used as the event source.
    /// </summary>
    /// <value>Indices from which to collect click and conversion events. If null, the current index and replica group will be used as the event source.</value>
    [DataMember(Name = "eventSources", EmitDefaultValue = false)]
    public List<string> EventSources { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
      StringBuilder sb = new StringBuilder();
      sb.Append("class SemanticSearch {\n");
      sb.Append("  EventSources: ").Append(EventSources).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Returns the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public virtual string ToJson()
    {
      return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
    }

  }

}
