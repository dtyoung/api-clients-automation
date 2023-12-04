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
  /// FetchedIndex
  /// </summary>
  [DataContract(Name = "fetchedIndex")]
  public partial class FetchedIndex : IEquatable<FetchedIndex>, IValidatableObject
  {
    /// <summary>
    /// Initializes a new instance of the <see cref="FetchedIndex" /> class.
    /// </summary>
    [JsonConstructorAttribute]
    protected FetchedIndex() { }
    /// <summary>
    /// Initializes a new instance of the <see cref="FetchedIndex" /> class.
    /// </summary>
    /// <param name="name">Index name. (required).</param>
    /// <param name="createdAt">Index creation date. An empty string means that the index has no records. (required).</param>
    /// <param name="updatedAt">Timestamp of the last update in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format. (required).</param>
    /// <param name="entries">Number of records contained in the index. (required).</param>
    /// <param name="dataSize">Number of bytes of the index in minified format. (required).</param>
    /// <param name="fileSize">Number of bytes of the index binary file. (required).</param>
    /// <param name="lastBuildTimeS">Last build time. (required).</param>
    /// <param name="numberOfPendingTasks">Number of pending indexing operations. This value is deprecated and should not be used. (required) (default to 0).</param>
    /// <param name="pendingTask">A boolean which says whether the index has pending tasks. This value is deprecated and should not be used. (required) (default to false).</param>
    /// <param name="primary">Only present if the index is a replica. Contains the name of the related primary index..</param>
    /// <param name="replicas">Only present if the index is a primary index with replicas. Contains the names of all linked replicas..</param>
    public FetchedIndex(string name = default(string), string createdAt = default(string), string updatedAt = default(string), int entries = default(int), int dataSize = default(int), int fileSize = default(int), int lastBuildTimeS = default(int), int numberOfPendingTasks = 0, bool pendingTask = false, string primary = default(string), List<string> replicas = default(List<string>))
    {
      // to ensure "name" is required (not null)
      if (name == null)
      {
        throw new ArgumentNullException("name is a required property for FetchedIndex and cannot be null");
      }
      this.Name = name;
      // to ensure "createdAt" is required (not null)
      if (createdAt == null)
      {
        throw new ArgumentNullException("createdAt is a required property for FetchedIndex and cannot be null");
      }
      this.CreatedAt = createdAt;
      // to ensure "updatedAt" is required (not null)
      if (updatedAt == null)
      {
        throw new ArgumentNullException("updatedAt is a required property for FetchedIndex and cannot be null");
      }
      this.UpdatedAt = updatedAt;
      this.Entries = entries;
      this.DataSize = dataSize;
      this.FileSize = fileSize;
      this.LastBuildTimeS = lastBuildTimeS;
      this.NumberOfPendingTasks = numberOfPendingTasks;
      this.PendingTask = pendingTask;
      this.Primary = primary;
      this.Replicas = replicas;
    }

    /// <summary>
    /// Index name.
    /// </summary>
    /// <value>Index name.</value>
    [DataMember(Name = "name", IsRequired = true, EmitDefaultValue = true)]
    public string Name { get; set; }

    /// <summary>
    /// Index creation date. An empty string means that the index has no records.
    /// </summary>
    /// <value>Index creation date. An empty string means that the index has no records.</value>
    [DataMember(Name = "createdAt", IsRequired = true, EmitDefaultValue = true)]
    public string CreatedAt { get; set; }

    /// <summary>
    /// Timestamp of the last update in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format.
    /// </summary>
    /// <value>Timestamp of the last update in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format.</value>
    [DataMember(Name = "updatedAt", IsRequired = true, EmitDefaultValue = true)]
    public string UpdatedAt { get; set; }

    /// <summary>
    /// Number of records contained in the index.
    /// </summary>
    /// <value>Number of records contained in the index.</value>
    [DataMember(Name = "entries", IsRequired = true, EmitDefaultValue = true)]
    public int Entries { get; set; }

    /// <summary>
    /// Number of bytes of the index in minified format.
    /// </summary>
    /// <value>Number of bytes of the index in minified format.</value>
    [DataMember(Name = "dataSize", IsRequired = true, EmitDefaultValue = true)]
    public int DataSize { get; set; }

    /// <summary>
    /// Number of bytes of the index binary file.
    /// </summary>
    /// <value>Number of bytes of the index binary file.</value>
    [DataMember(Name = "fileSize", IsRequired = true, EmitDefaultValue = true)]
    public int FileSize { get; set; }

    /// <summary>
    /// Last build time.
    /// </summary>
    /// <value>Last build time.</value>
    [DataMember(Name = "lastBuildTimeS", IsRequired = true, EmitDefaultValue = true)]
    public int LastBuildTimeS { get; set; }

    /// <summary>
    /// Number of pending indexing operations. This value is deprecated and should not be used.
    /// </summary>
    /// <value>Number of pending indexing operations. This value is deprecated and should not be used.</value>
    [DataMember(Name = "numberOfPendingTasks", IsRequired = true, EmitDefaultValue = true)]
    public int NumberOfPendingTasks { get; set; }

    /// <summary>
    /// A boolean which says whether the index has pending tasks. This value is deprecated and should not be used.
    /// </summary>
    /// <value>A boolean which says whether the index has pending tasks. This value is deprecated and should not be used.</value>
    [DataMember(Name = "pendingTask", IsRequired = true, EmitDefaultValue = true)]
    public bool PendingTask { get; set; }

    /// <summary>
    /// Only present if the index is a replica. Contains the name of the related primary index.
    /// </summary>
    /// <value>Only present if the index is a replica. Contains the name of the related primary index.</value>
    [DataMember(Name = "primary", EmitDefaultValue = false)]
    public string Primary { get; set; }

    /// <summary>
    /// Only present if the index is a primary index with replicas. Contains the names of all linked replicas.
    /// </summary>
    /// <value>Only present if the index is a primary index with replicas. Contains the names of all linked replicas.</value>
    [DataMember(Name = "replicas", EmitDefaultValue = false)]
    public List<string> Replicas { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
      StringBuilder sb = new StringBuilder();
      sb.Append("class FetchedIndex {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  CreatedAt: ").Append(CreatedAt).Append("\n");
      sb.Append("  UpdatedAt: ").Append(UpdatedAt).Append("\n");
      sb.Append("  Entries: ").Append(Entries).Append("\n");
      sb.Append("  DataSize: ").Append(DataSize).Append("\n");
      sb.Append("  FileSize: ").Append(FileSize).Append("\n");
      sb.Append("  LastBuildTimeS: ").Append(LastBuildTimeS).Append("\n");
      sb.Append("  NumberOfPendingTasks: ").Append(NumberOfPendingTasks).Append("\n");
      sb.Append("  PendingTask: ").Append(PendingTask).Append("\n");
      sb.Append("  Primary: ").Append(Primary).Append("\n");
      sb.Append("  Replicas: ").Append(Replicas).Append("\n");
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
      return this.Equals(input as FetchedIndex);
    }

    /// <summary>
    /// Returns true if FetchedIndex instances are equal
    /// </summary>
    /// <param name="input">Instance of FetchedIndex to be compared</param>
    /// <returns>Boolean</returns>
    public bool Equals(FetchedIndex input)
    {
      if (input == null)
      {
        return false;
      }
      return
          (
              this.Name == input.Name ||
              (this.Name != null &&
              this.Name.Equals(input.Name))
          ) &&
          (
              this.CreatedAt == input.CreatedAt ||
              (this.CreatedAt != null &&
              this.CreatedAt.Equals(input.CreatedAt))
          ) &&
          (
              this.UpdatedAt == input.UpdatedAt ||
              (this.UpdatedAt != null &&
              this.UpdatedAt.Equals(input.UpdatedAt))
          ) &&
          (
              this.Entries == input.Entries ||
              this.Entries.Equals(input.Entries)
          ) &&
          (
              this.DataSize == input.DataSize ||
              this.DataSize.Equals(input.DataSize)
          ) &&
          (
              this.FileSize == input.FileSize ||
              this.FileSize.Equals(input.FileSize)
          ) &&
          (
              this.LastBuildTimeS == input.LastBuildTimeS ||
              this.LastBuildTimeS.Equals(input.LastBuildTimeS)
          ) &&
          (
              this.NumberOfPendingTasks == input.NumberOfPendingTasks ||
              this.NumberOfPendingTasks.Equals(input.NumberOfPendingTasks)
          ) &&
          (
              this.PendingTask == input.PendingTask ||
              this.PendingTask.Equals(input.PendingTask)
          ) &&
          (
              this.Primary == input.Primary ||
              (this.Primary != null &&
              this.Primary.Equals(input.Primary))
          ) &&
          (
              this.Replicas == input.Replicas ||
              this.Replicas != null &&
              input.Replicas != null &&
              this.Replicas.SequenceEqual(input.Replicas)
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
        if (this.Name != null)
        {
          hashCode = (hashCode * 59) + this.Name.GetHashCode();
        }
        if (this.CreatedAt != null)
        {
          hashCode = (hashCode * 59) + this.CreatedAt.GetHashCode();
        }
        if (this.UpdatedAt != null)
        {
          hashCode = (hashCode * 59) + this.UpdatedAt.GetHashCode();
        }
        hashCode = (hashCode * 59) + this.Entries.GetHashCode();
        hashCode = (hashCode * 59) + this.DataSize.GetHashCode();
        hashCode = (hashCode * 59) + this.FileSize.GetHashCode();
        hashCode = (hashCode * 59) + this.LastBuildTimeS.GetHashCode();
        hashCode = (hashCode * 59) + this.NumberOfPendingTasks.GetHashCode();
        hashCode = (hashCode * 59) + this.PendingTask.GetHashCode();
        if (this.Primary != null)
        {
          hashCode = (hashCode * 59) + this.Primary.GetHashCode();
        }
        if (this.Replicas != null)
        {
          hashCode = (hashCode * 59) + this.Replicas.GetHashCode();
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
