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
/// API request body for creating a task.
/// </summary>
public partial class TaskCreate
{

  /// <summary>
  /// Gets or Sets Action
  /// </summary>
  [JsonPropertyName("action")]
  public ActionType? Action { get; set; }
  /// <summary>
  /// Initializes a new instance of the TaskCreate class.
  /// </summary>
  [JsonConstructor]
  public TaskCreate() { }
  /// <summary>
  /// Initializes a new instance of the TaskCreate class.
  /// </summary>
  /// <param name="sourceID">Universally uniqud identifier (UUID) of a source. (required).</param>
  /// <param name="destinationID">Universally unique identifier (UUID) of a destination resource. (required).</param>
  /// <param name="trigger">trigger (required).</param>
  /// <param name="action">action (required).</param>
  public TaskCreate(string sourceID, string destinationID, TaskCreateTrigger trigger, ActionType? action)
  {
    SourceID = sourceID ?? throw new ArgumentNullException(nameof(sourceID));
    DestinationID = destinationID ?? throw new ArgumentNullException(nameof(destinationID));
    Trigger = trigger ?? throw new ArgumentNullException(nameof(trigger));
    Action = action;
  }

  /// <summary>
  /// Universally uniqud identifier (UUID) of a source.
  /// </summary>
  /// <value>Universally uniqud identifier (UUID) of a source.</value>
  [JsonPropertyName("sourceID")]
  public string SourceID { get; set; }

  /// <summary>
  /// Universally unique identifier (UUID) of a destination resource.
  /// </summary>
  /// <value>Universally unique identifier (UUID) of a destination resource.</value>
  [JsonPropertyName("destinationID")]
  public string DestinationID { get; set; }

  /// <summary>
  /// Gets or Sets Trigger
  /// </summary>
  [JsonPropertyName("trigger")]
  public TaskCreateTrigger Trigger { get; set; }

  /// <summary>
  /// Whether the task is enabled.
  /// </summary>
  /// <value>Whether the task is enabled.</value>
  [JsonPropertyName("enabled")]
  public bool? Enabled { get; set; }

  /// <summary>
  /// Maximum accepted percentage of failures for a task run to finish successfully.
  /// </summary>
  /// <value>Maximum accepted percentage of failures for a task run to finish successfully.</value>
  [JsonPropertyName("failureThreshold")]
  public int? FailureThreshold { get; set; }

  /// <summary>
  /// Gets or Sets Input
  /// </summary>
  [JsonPropertyName("input")]
  public TaskInput Input { get; set; }

  /// <summary>
  /// Date of the last cursor in RFC 3339 format.
  /// </summary>
  /// <value>Date of the last cursor in RFC 3339 format.</value>
  [JsonPropertyName("cursor")]
  public string Cursor { get; set; }

  /// <summary>
  /// Returns the string presentation of the object
  /// </summary>
  /// <returns>String presentation of the object</returns>
  public override string ToString()
  {
    StringBuilder sb = new StringBuilder();
    sb.Append("class TaskCreate {\n");
    sb.Append("  SourceID: ").Append(SourceID).Append("\n");
    sb.Append("  DestinationID: ").Append(DestinationID).Append("\n");
    sb.Append("  Trigger: ").Append(Trigger).Append("\n");
    sb.Append("  Action: ").Append(Action).Append("\n");
    sb.Append("  Enabled: ").Append(Enabled).Append("\n");
    sb.Append("  FailureThreshold: ").Append(FailureThreshold).Append("\n");
    sb.Append("  Input: ").Append(Input).Append("\n");
    sb.Append("  Cursor: ").Append(Cursor).Append("\n");
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
    if (obj is not TaskCreate input)
    {
      return false;
    }

    return
        (SourceID == input.SourceID || (SourceID != null && SourceID.Equals(input.SourceID))) &&
        (DestinationID == input.DestinationID || (DestinationID != null && DestinationID.Equals(input.DestinationID))) &&
        (Trigger == input.Trigger || (Trigger != null && Trigger.Equals(input.Trigger))) &&
        (Action == input.Action || Action.Equals(input.Action)) &&
        (Enabled == input.Enabled || Enabled.Equals(input.Enabled)) &&
        (FailureThreshold == input.FailureThreshold || FailureThreshold.Equals(input.FailureThreshold)) &&
        (Input == input.Input || (Input != null && Input.Equals(input.Input))) &&
        (Cursor == input.Cursor || (Cursor != null && Cursor.Equals(input.Cursor)));
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
      if (SourceID != null)
      {
        hashCode = (hashCode * 59) + SourceID.GetHashCode();
      }
      if (DestinationID != null)
      {
        hashCode = (hashCode * 59) + DestinationID.GetHashCode();
      }
      if (Trigger != null)
      {
        hashCode = (hashCode * 59) + Trigger.GetHashCode();
      }
      hashCode = (hashCode * 59) + Action.GetHashCode();
      hashCode = (hashCode * 59) + Enabled.GetHashCode();
      hashCode = (hashCode * 59) + FailureThreshold.GetHashCode();
      if (Input != null)
      {
        hashCode = (hashCode * 59) + Input.GetHashCode();
      }
      if (Cursor != null)
      {
        hashCode = (hashCode * 59) + Cursor.GetHashCode();
      }
      return hashCode;
    }
  }

}

