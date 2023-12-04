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
  /// [Redirect results to a URL](https://www.algolia.com/doc/guides/managing-results/rules/merchandising-and-promoting/how-to/redirects/). 
  /// </summary>
  [DataContract(Name = "redirect")]
  public partial class Redirect : IEquatable<Redirect>, IValidatableObject
  {
    /// <summary>
    /// Initializes a new instance of the <see cref="Redirect" /> class.
    /// </summary>
    /// <param name="index">index.</param>
    public Redirect(List<RedirectRuleIndexMetadata> index = default(List<RedirectRuleIndexMetadata>))
    {
      this.Index = index;
    }

    /// <summary>
    /// Gets or Sets Index
    /// </summary>
    [DataMember(Name = "index", EmitDefaultValue = false)]
    public List<RedirectRuleIndexMetadata> Index { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
      StringBuilder sb = new StringBuilder();
      sb.Append("class Redirect {\n");
      sb.Append("  Index: ").Append(Index).Append("\n");
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

    /// <summary>
    /// Returns true if objects are equal
    /// </summary>
    /// <param name="input">Object to be compared</param>
    /// <returns>Boolean</returns>
    public override bool Equals(object input)
    {
      return this.Equals(input as Redirect);
    }

    /// <summary>
    /// Returns true if Redirect instances are equal
    /// </summary>
    /// <param name="input">Instance of Redirect to be compared</param>
    /// <returns>Boolean</returns>
    public bool Equals(Redirect input)
    {
      if (input == null)
      {
        return false;
      }
      return
          (
              this.Index == input.Index ||
              this.Index != null &&
              input.Index != null &&
              this.Index.SequenceEqual(input.Index)
          );
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
        if (this.Index != null)
        {
          hashCode = (hashCode * 59) + this.Index.GetHashCode();
        }
        return hashCode;
      }
    }

    /// <summary>
    /// To validate all properties of the instance
    /// </summary>
    /// <param name="validationContext">Validation context</param>
    /// <returns>Validation Result</returns>
    IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
    {
      yield break;
    }
  }

}
