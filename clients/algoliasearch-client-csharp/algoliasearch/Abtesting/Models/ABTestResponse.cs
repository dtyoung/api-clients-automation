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
using FileParameter = Algolia.Search.Abtesting.Client.FileParameter;
using OpenAPIDateConverter = Algolia.Search.Abtesting.Client.OpenAPIDateConverter;

namespace Algolia.Search.Abtesting.Models
{
  /// <summary>
  /// ABTestResponse
  /// </summary>
  [DataContract(Name = "ABTestResponse")]
  public partial class ABTestResponse : IEquatable<ABTestResponse>, IValidatableObject
  {
    /// <summary>
    /// Initializes a new instance of the <see cref="ABTestResponse" /> class.
    /// </summary>
    [JsonConstructorAttribute]
    protected ABTestResponse() { }
    /// <summary>
    /// Initializes a new instance of the <see cref="ABTestResponse" /> class.
    /// </summary>
    /// <param name="index">A/B test index. (required).</param>
    /// <param name="abTestID">Unique A/B test ID. (required).</param>
    /// <param name="taskID">Unique identifier of a task. A successful API response means that a task was added to a queue. It might not run immediately. You can check the task&#39;s progress with the &#x60;task&#x60; operation and this &#x60;taskID&#x60;.  (required).</param>
    public ABTestResponse(string index = default(string), int abTestID = default(int), long taskID = default(long))
    {
      // to ensure "index" is required (not null)
      if (index == null)
      {
        throw new ArgumentNullException("index is a required property for ABTestResponse and cannot be null");
      }
      this.Index = index;
      this.AbTestID = abTestID;
      this.TaskID = taskID;
    }

    /// <summary>
    /// A/B test index.
    /// </summary>
    /// <value>A/B test index.</value>
    [DataMember(Name = "index", IsRequired = true, EmitDefaultValue = true)]
    public string Index { get; set; }

    /// <summary>
    /// Unique A/B test ID.
    /// </summary>
    /// <value>Unique A/B test ID.</value>
    [DataMember(Name = "abTestID", IsRequired = true, EmitDefaultValue = true)]
    public int AbTestID { get; set; }

    /// <summary>
    /// Unique identifier of a task. A successful API response means that a task was added to a queue. It might not run immediately. You can check the task&#39;s progress with the &#x60;task&#x60; operation and this &#x60;taskID&#x60;. 
    /// </summary>
    /// <value>Unique identifier of a task. A successful API response means that a task was added to a queue. It might not run immediately. You can check the task&#39;s progress with the &#x60;task&#x60; operation and this &#x60;taskID&#x60;. </value>
    [DataMember(Name = "taskID", IsRequired = true, EmitDefaultValue = true)]
    public long TaskID { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
      StringBuilder sb = new StringBuilder();
      sb.Append("class ABTestResponse {\n");
      sb.Append("  Index: ").Append(Index).Append("\n");
      sb.Append("  AbTestID: ").Append(AbTestID).Append("\n");
      sb.Append("  TaskID: ").Append(TaskID).Append("\n");
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
      return this.Equals(input as ABTestResponse);
    }

    /// <summary>
    /// Returns true if ABTestResponse instances are equal
    /// </summary>
    /// <param name="input">Instance of ABTestResponse to be compared</param>
    /// <returns>Boolean</returns>
    public bool Equals(ABTestResponse input)
    {
      if (input == null)
      {
        return false;
      }
      return
          (
              this.Index == input.Index ||
              (this.Index != null &&
              this.Index.Equals(input.Index))
          ) &&
          (
              this.AbTestID == input.AbTestID ||
              this.AbTestID.Equals(input.AbTestID)
          ) &&
          (
              this.TaskID == input.TaskID ||
              this.TaskID.Equals(input.TaskID)
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
        hashCode = (hashCode * 59) + this.AbTestID.GetHashCode();
        hashCode = (hashCode * 59) + this.TaskID.GetHashCode();
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
