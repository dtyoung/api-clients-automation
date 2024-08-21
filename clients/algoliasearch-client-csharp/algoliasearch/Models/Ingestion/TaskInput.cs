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
using System.IO;
using System.Reflection;
using Algolia.Search.Models.Common;

namespace Algolia.Search.Models.Ingestion;

/// <summary>
/// Configuration of the task, depending on its type.
/// </summary>
[JsonConverter(typeof(TaskInputJsonConverter))]
public partial class TaskInput : AbstractSchema
{
  /// <summary>
  /// Initializes a new instance of the TaskInput class
  /// with a StreamingInput
  /// </summary>
  /// <param name="actualInstance">An instance of StreamingInput.</param>
  public TaskInput(StreamingInput actualInstance)
  {
    ActualInstance = actualInstance ?? throw new ArgumentException("Invalid instance found. Must not be null.");
  }

  /// <summary>
  /// Initializes a new instance of the TaskInput class
  /// with a DockerStreamsInput
  /// </summary>
  /// <param name="actualInstance">An instance of DockerStreamsInput.</param>
  public TaskInput(DockerStreamsInput actualInstance)
  {
    ActualInstance = actualInstance ?? throw new ArgumentException("Invalid instance found. Must not be null.");
  }

  /// <summary>
  /// Initializes a new instance of the TaskInput class
  /// with a ShopifyInput
  /// </summary>
  /// <param name="actualInstance">An instance of ShopifyInput.</param>
  public TaskInput(ShopifyInput actualInstance)
  {
    ActualInstance = actualInstance ?? throw new ArgumentException("Invalid instance found. Must not be null.");
  }


  /// <summary>
  /// Gets or Sets ActualInstance
  /// </summary>
  public sealed override object ActualInstance { get; set; }

  /// <summary>
  /// Get the actual instance of `StreamingInput`. If the actual instance is not `StreamingInput`,
  /// the InvalidClassException will be thrown
  /// </summary>
  /// <returns>An instance of StreamingInput</returns>
  public StreamingInput AsStreamingInput()
  {
    return (StreamingInput)ActualInstance;
  }

  /// <summary>
  /// Get the actual instance of `DockerStreamsInput`. If the actual instance is not `DockerStreamsInput`,
  /// the InvalidClassException will be thrown
  /// </summary>
  /// <returns>An instance of DockerStreamsInput</returns>
  public DockerStreamsInput AsDockerStreamsInput()
  {
    return (DockerStreamsInput)ActualInstance;
  }

  /// <summary>
  /// Get the actual instance of `ShopifyInput`. If the actual instance is not `ShopifyInput`,
  /// the InvalidClassException will be thrown
  /// </summary>
  /// <returns>An instance of ShopifyInput</returns>
  public ShopifyInput AsShopifyInput()
  {
    return (ShopifyInput)ActualInstance;
  }


  /// <summary>
  /// Check if the actual instance is of `StreamingInput` type.
  /// </summary>
  /// <returns>Whether or not the instance is the type</returns>
  public bool IsStreamingInput()
  {
    return ActualInstance.GetType() == typeof(StreamingInput);
  }

  /// <summary>
  /// Check if the actual instance is of `DockerStreamsInput` type.
  /// </summary>
  /// <returns>Whether or not the instance is the type</returns>
  public bool IsDockerStreamsInput()
  {
    return ActualInstance.GetType() == typeof(DockerStreamsInput);
  }

  /// <summary>
  /// Check if the actual instance is of `ShopifyInput` type.
  /// </summary>
  /// <returns>Whether or not the instance is the type</returns>
  public bool IsShopifyInput()
  {
    return ActualInstance.GetType() == typeof(ShopifyInput);
  }

  /// <summary>
  /// Returns the string presentation of the object
  /// </summary>
  /// <returns>String presentation of the object</returns>
  public override string ToString()
  {
    var sb = new StringBuilder();
    sb.Append("class TaskInput {\n");
    sb.Append("  ActualInstance: ").Append(ActualInstance).Append("\n");
    sb.Append("}\n");
    return sb.ToString();
  }

  /// <summary>
  /// Returns the JSON string presentation of the object
  /// </summary>
  /// <returns>JSON string presentation of the object</returns>
  public override string ToJson()
  {
    return JsonSerializer.Serialize(ActualInstance, JsonConfig.Options);
  }

  /// <summary>
  /// Returns true if objects are equal
  /// </summary>
  /// <param name="obj">Object to be compared</param>
  /// <returns>Boolean</returns>
  public override bool Equals(object obj)
  {
    if (obj is not TaskInput input)
    {
      return false;
    }

    return ActualInstance.Equals(input.ActualInstance);
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
      if (ActualInstance != null)
        hashCode = hashCode * 59 + ActualInstance.GetHashCode();
      return hashCode;
    }
  }
}





/// <summary>
/// Custom JSON converter for TaskInput
/// </summary>
public class TaskInputJsonConverter : JsonConverter<TaskInput>
{

  /// <summary>
  /// Check if the object can be converted
  /// </summary>
  /// <param name="objectType">Object type</param>
  /// <returns>True if the object can be converted</returns>
  public override bool CanConvert(Type objectType)
  {
    return objectType == typeof(TaskInput);
  }

  /// <summary>
  /// To convert a JSON string into an object
  /// </summary>
  /// <param name="reader">JSON reader</param>
  /// <param name="typeToConvert">Object type</param>
  /// <param name="options">Serializer options</param>
  /// <returns>The object converted from the JSON string</returns>
  public override TaskInput Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
  {
    var jsonDocument = JsonDocument.ParseValue(ref reader);
    var root = jsonDocument.RootElement;
    if (root.ValueKind == JsonValueKind.Object && root.TryGetProperty("mapping", out _))
    {
      try
      {
        return new TaskInput(jsonDocument.Deserialize<StreamingInput>(JsonConfig.Options));
      }
      catch (Exception exception)
      {
        // deserialization failed, try the next one
        System.Diagnostics.Debug.WriteLine($"Failed to deserialize into StreamingInput: {exception}");
      }
    }
    if (root.ValueKind == JsonValueKind.Object && root.TryGetProperty("streams", out _))
    {
      try
      {
        return new TaskInput(jsonDocument.Deserialize<DockerStreamsInput>(JsonConfig.Options));
      }
      catch (Exception exception)
      {
        // deserialization failed, try the next one
        System.Diagnostics.Debug.WriteLine($"Failed to deserialize into DockerStreamsInput: {exception}");
      }
    }
    if (root.ValueKind == JsonValueKind.Object)
    {
      try
      {
        return new TaskInput(jsonDocument.Deserialize<ShopifyInput>(JsonConfig.Options));
      }
      catch (Exception exception)
      {
        // deserialization failed, try the next one
        System.Diagnostics.Debug.WriteLine($"Failed to deserialize into ShopifyInput: {exception}");
      }
    }
    throw new InvalidDataException($"The JSON string cannot be deserialized into any schema defined.");
  }

  /// <summary>
  /// To write the JSON string
  /// </summary>
  /// <param name="writer">JSON writer</param>
  /// <param name="value">TaskInput to be converted into a JSON string</param>
  /// <param name="options">JSON Serializer options</param>
  public override void Write(Utf8JsonWriter writer, TaskInput value, JsonSerializerOptions options)
  {
    writer.WriteRawValue(value.ToJson());
  }
}

