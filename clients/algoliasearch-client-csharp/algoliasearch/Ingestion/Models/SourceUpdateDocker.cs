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

namespace Algolia.Search.Models.Ingestion
{
  /// <summary>
  /// SourceUpdateDocker
  /// </summary>
  [DataContract(Name = "SourceUpdateDocker")]
  [JsonObject(MemberSerialization.OptOut)]
  public partial class SourceUpdateDocker
  {

    /// <summary>
    /// Gets or Sets Registry
    /// </summary>
    [DataMember(Name = "registry", EmitDefaultValue = false)]
    public DockerRegistry Registry { get; set; }
    /// <summary>
    /// Initializes a new instance of the <see cref="SourceUpdateDocker" /> class.
    /// </summary>
    [JsonConstructorAttribute]
    public SourceUpdateDocker() { }
    /// <summary>
    /// Initializes a new instance of the <see cref="SourceUpdateDocker" /> class.
    /// </summary>
    /// <param name="varConfiguration">The configuration of the spec. (required).</param>
    public SourceUpdateDocker(Object varConfiguration)
    {
      this.VarConfiguration = varConfiguration ?? throw new ArgumentNullException("varConfiguration is a required property for SourceUpdateDocker and cannot be null");
    }

    /// <summary>
    /// The name of the image to pull.
    /// </summary>
    /// <value>The name of the image to pull.</value>
    [DataMember(Name = "image", EmitDefaultValue = false)]
    public string Image { get; set; }

    /// <summary>
    /// The version of the image, defaults to &#x60;latest&#x60;.
    /// </summary>
    /// <value>The version of the image, defaults to &#x60;latest&#x60;.</value>
    [DataMember(Name = "version", EmitDefaultValue = false)]
    public string VarVersion { get; set; }

    /// <summary>
    /// The configuration of the spec.
    /// </summary>
    /// <value>The configuration of the spec.</value>
    [DataMember(Name = "configuration", IsRequired = true, EmitDefaultValue = false)]
    public Object VarConfiguration { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
      StringBuilder sb = new StringBuilder();
      sb.Append("class SourceUpdateDocker {\n");
      sb.Append("  Registry: ").Append(Registry).Append("\n");
      sb.Append("  Image: ").Append(Image).Append("\n");
      sb.Append("  VarVersion: ").Append(VarVersion).Append("\n");
      sb.Append("  VarConfiguration: ").Append(VarConfiguration).Append("\n");
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
