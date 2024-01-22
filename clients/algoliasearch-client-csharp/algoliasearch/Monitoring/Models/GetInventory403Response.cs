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

namespace Algolia.Search.Models.Monitoring
{
  /// <summary>
  /// GetInventory403Response
  /// </summary>
  [DataContract(Name = "getInventory_403_response")]
  [JsonObject(MemberSerialization.OptOut)]
  public partial class GetInventory403Response
  {
    /// <summary>
    /// Initializes a new instance of the <see cref="GetInventory403Response" /> class.
    /// </summary>
    public GetInventory403Response()
    {
    }

    /// <summary>
    /// Gets or Sets Reason
    /// </summary>
    [DataMember(Name = "reason", EmitDefaultValue = false)]
    public string Reason { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
      StringBuilder sb = new StringBuilder();
      sb.Append("class GetInventory403Response {\n");
      sb.Append("  Reason: ").Append(Reason).Append("\n");
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
