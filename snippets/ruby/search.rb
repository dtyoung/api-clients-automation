# Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
# >IMPORT
require "algolia"

# IMPORT<

# Snippet for the addApiKey method.
#
# addApiKey
def snippet_for_add_api_key
  # >SEPARATOR addApiKey default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.add_api_key(
    ApiKey.new(
      acl: ["search", "addObject"],
      description: "my new api key",
      validity: 300,
      max_queries_per_ip_per_hour: 100,
      max_hits_per_query: 20
    )
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the addOrUpdateObject method.
#
# addOrUpdateObject
def snippet_for_add_or_update_object
  # >SEPARATOR addOrUpdateObject default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.add_or_update_object("indexName", "uniqueID", {key: "value"})

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the appendSource method.
#
# appendSource
def snippet_for_append_source
  # >SEPARATOR appendSource default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.append_source(Source.new(source: "theSource", description: "theDescription"))

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the assignUserId method.
#
# assignUserId
def snippet_for_assign_user_id
  # >SEPARATOR assignUserId default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.assign_user_id("userID", AssignUserIdParams.new(cluster: "theCluster"))

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the batch method.
#
# addObject
def snippet_for_batch
  # >SEPARATOR batch addObject
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.batch(
    "<YOUR_INDEX_NAME>",
    BatchWriteParams.new(
      requests: [
        BatchRequest.new(action: "addObject", body: {key: "bar", foo: "1"}),
        BatchRequest.new(action: "addObject", body: {key: "baz", foo: "2"})
      ]
    )
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the batch method.
#
# clear
def snippet_for_batch1
  # >SEPARATOR batch clear
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.batch(
    "<YOUR_INDEX_NAME>",
    BatchWriteParams.new(requests: [BatchRequest.new(action: "clear", body: {key: "value"})])
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the batch method.
#
# delete
def snippet_for_batch2
  # >SEPARATOR batch delete
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.batch(
    "<YOUR_INDEX_NAME>",
    BatchWriteParams.new(requests: [BatchRequest.new(action: "delete", body: {key: "value"})])
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the batch method.
#
# deleteObject
def snippet_for_batch3
  # >SEPARATOR batch deleteObject
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.batch(
    "<YOUR_INDEX_NAME>",
    BatchWriteParams.new(requests: [BatchRequest.new(action: "deleteObject", body: {key: "value"})])
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the batch method.
#
# partialUpdateObject
def snippet_for_batch4
  # >SEPARATOR batch partialUpdateObject
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.batch(
    "<YOUR_INDEX_NAME>",
    BatchWriteParams.new(requests: [BatchRequest.new(action: "partialUpdateObject", body: {key: "value"})])
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the batch method.
#
# partialUpdateObjectNoCreate
def snippet_for_batch5
  # >SEPARATOR batch partialUpdateObjectNoCreate
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.batch(
    "<YOUR_INDEX_NAME>",
    BatchWriteParams.new(requests: [BatchRequest.new(action: "partialUpdateObjectNoCreate", body: {key: "value"})])
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the batch method.
#
# updateObject
def snippet_for_batch6
  # >SEPARATOR batch updateObject
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.batch(
    "<YOUR_INDEX_NAME>",
    BatchWriteParams.new(requests: [BatchRequest.new(action: "updateObject", body: {key: "value"})])
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the batchAssignUserIds method.
#
# batchAssignUserIds
def snippet_for_batch_assign_user_ids
  # >SEPARATOR batchAssignUserIds default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.batch_assign_user_ids(
    "userID",
    BatchAssignUserIdsParams.new(cluster: "theCluster", users: ["user1", "user2"])
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the batchDictionaryEntries method.
#
# replace
def snippet_for_batch_dictionary_entries
  # >SEPARATOR batchDictionaryEntries replace
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.batch_dictionary_entries(
    "plurals",
    BatchDictionaryEntriesParams.new(
      clear_existing_dictionary_entries: true,
      requests: [
        BatchDictionaryEntriesRequest.new(
          action: "addEntry",
          body: DictionaryEntry.new(
            object_id: "1",
            language: "en",
            word: "fancy",
            words: ["believe", "algolia"],
            decomposition: ["trust", "algolia"],
            state: "enabled"
          )
        )
      ]
    )
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the batchDictionaryEntries method.
#
# delete
def snippet_for_batch_dictionary_entries1
  # >SEPARATOR batchDictionaryEntries delete
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.batch_dictionary_entries(
    "plurals",
    BatchDictionaryEntriesParams.new(
      clear_existing_dictionary_entries: true,
      requests: [BatchDictionaryEntriesRequest.new(action: "deleteEntry", body: DictionaryEntry.new(object_id: "1"))]
    )
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the batchDictionaryEntries method.
#
# append
def snippet_for_batch_dictionary_entries2
  # >SEPARATOR batchDictionaryEntries append
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.batch_dictionary_entries(
    "stopwords",
    BatchDictionaryEntriesParams.new(
      requests: [
        BatchDictionaryEntriesRequest.new(
          action: "addEntry",
          body: DictionaryEntry.new(object_id: "1", language: "en", additional: "try me")
        )
      ]
    )
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the browse method.
#
# browse with minimal parameters
def snippet_for_browse
  # >SEPARATOR browse default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.browse("cts_e2e_browse")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the clearObjects method.
#
# clearObjects
def snippet_for_clear_objects
  # >SEPARATOR clearObjects default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.clear_objects("theIndexName")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the clearRules method.
#
# clearRules
def snippet_for_clear_rules
  # >SEPARATOR clearRules default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.clear_rules("indexName")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the clearSynonyms method.
#
# clearSynonyms
def snippet_for_clear_synonyms
  # >SEPARATOR clearSynonyms default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.clear_synonyms("indexName")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the customDelete method.
#
# allow del method for a custom path with minimal parameters
def snippet_for_custom_delete
  # >SEPARATOR customDelete default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.custom_delete("test/minimal")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the customGet method.
#
# allow get method for a custom path with minimal parameters
def snippet_for_custom_get
  # >SEPARATOR customGet default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.custom_get("test/minimal")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the customPost method.
#
# allow post method for a custom path with minimal parameters
def snippet_for_custom_post
  # >SEPARATOR customPost default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.custom_post("test/minimal")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the customPut method.
#
# allow put method for a custom path with minimal parameters
def snippet_for_custom_put
  # >SEPARATOR customPut default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.custom_put("test/minimal")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the deleteApiKey method.
#
# deleteApiKey
def snippet_for_delete_api_key
  # >SEPARATOR deleteApiKey default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.delete_api_key("myTestApiKey")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the deleteBy method.
#
# deleteBy
def snippet_for_delete_by
  # >SEPARATOR deleteBy default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.delete_by("theIndexName", DeleteByParams.new(filters: "brand:brandName"))

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the deleteIndex method.
#
# deleteIndex
def snippet_for_delete_index
  # >SEPARATOR deleteIndex default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.delete_index("theIndexName")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the deleteObject method.
#
# deleteObject
def snippet_for_delete_object
  # >SEPARATOR deleteObject default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.delete_object("<YOUR_INDEX_NAME>", "uniqueID")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the deleteRule method.
#
# delete rule simple case
def snippet_for_delete_rule
  # >SEPARATOR deleteRule default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.delete_rule("indexName", "id1")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the deleteSource method.
#
# deleteSource
def snippet_for_delete_source
  # >SEPARATOR deleteSource default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.delete_source("theSource")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the deleteSynonym method.
#
# deleteSynonym
def snippet_for_delete_synonym
  # >SEPARATOR deleteSynonym default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.delete_synonym("indexName", "id1")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the getApiKey method.
#
# getApiKey
def snippet_for_get_api_key
  # >SEPARATOR getApiKey default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.get_api_key("myTestApiKey")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the getAppTask method.
#
# getAppTask
def snippet_for_get_app_task
  # >SEPARATOR getAppTask default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.get_app_task(123)

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the getDictionaryLanguages method.
#
# get getDictionaryLanguages
def snippet_for_get_dictionary_languages
  # >SEPARATOR getDictionaryLanguages default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.get_dictionary_languages

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the getDictionarySettings method.
#
# get getDictionarySettings results
def snippet_for_get_dictionary_settings
  # >SEPARATOR getDictionarySettings default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.get_dictionary_settings

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the getLogs method.
#
# getLogs with minimal parameters
def snippet_for_get_logs
  # >SEPARATOR getLogs default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.get_logs

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the getObject method.
#
# getObject
def snippet_for_get_object
  # >SEPARATOR getObject default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.get_object("theIndexName", "uniqueID", ["attr1", "attr2"])

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the getObjects method.
#
# getObjects
def snippet_for_get_objects
  # >SEPARATOR getObjects default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.get_objects(
    GetObjectsParams.new(
      requests: [
        GetObjectsRequest.new(
          attributes_to_retrieve: ["attr1", "attr2"],
          object_id: "uniqueID",
          index_name: "theIndexName"
        )
      ]
    )
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the getRule method.
#
# getRule
def snippet_for_get_rule
  # >SEPARATOR getRule default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.get_rule("indexName", "id1")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the getSettings method.
#
# getSettings
def snippet_for_get_settings
  # >SEPARATOR getSettings default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.get_settings("cts_e2e_settings")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the getSources method.
#
# getSources
def snippet_for_get_sources
  # >SEPARATOR getSources default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.get_sources

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the getSynonym method.
#
# getSynonym
def snippet_for_get_synonym
  # >SEPARATOR getSynonym default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.get_synonym("indexName", "id1")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the getTask method.
#
# getTask
def snippet_for_get_task
  # >SEPARATOR getTask default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.get_task("theIndexName", 123)

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the getTopUserIds method.
#
# getTopUserIds
def snippet_for_get_top_user_ids
  # >SEPARATOR getTopUserIds default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.get_top_user_ids

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the getUserId method.
#
# getUserId
def snippet_for_get_user_id
  # >SEPARATOR getUserId default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.get_user_id("uniqueID")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the hasPendingMappings method.
#
# hasPendingMappings with minimal parameters
def snippet_for_has_pending_mappings
  # >SEPARATOR hasPendingMappings default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.has_pending_mappings

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the listApiKeys method.
#
# listApiKeys
def snippet_for_list_api_keys
  # >SEPARATOR listApiKeys default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.list_api_keys

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the listClusters method.
#
# listClusters
def snippet_for_list_clusters
  # >SEPARATOR listClusters default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.list_clusters

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the listIndices method.
#
# listIndices with minimal parameters
def snippet_for_list_indices
  # >SEPARATOR listIndices default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.list_indices

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the listUserIds method.
#
# listUserIds with minimal parameters
def snippet_for_list_user_ids
  # >SEPARATOR listUserIds default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.list_user_ids

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the multipleBatch method.
#
# multipleBatch
def snippet_for_multiple_batch
  # >SEPARATOR multipleBatch default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.multiple_batch(
    BatchParams.new(
      requests: [MultipleBatchRequest.new(action: "addObject", body: {key: "value"}, index_name: "theIndexName")]
    )
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the operationIndex method.
#
# scopes
def snippet_for_operation_index
  # >SEPARATOR operationIndex scopes
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.operation_index(
    "<SOURCE_INDEX_NAME>",
    OperationIndexParams.new(operation: "move", destination: "<DESTINATION_INDEX_NAME>", scope: ["rules", "settings"])
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the operationIndex method.
#
# copy
def snippet_for_operation_index1
  # >SEPARATOR operationIndex copy
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.operation_index(
    "<SOURCE_INDEX_NAME>",
    OperationIndexParams.new(operation: "copy", destination: "<DESTINATION_INDEX_NAME>")
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the operationIndex method.
#
# move
def snippet_for_operation_index2
  # >SEPARATOR operationIndex move
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.operation_index(
    "<SOURCE_INDEX_NAME>",
    OperationIndexParams.new(operation: "move", destination: "<DESTINATION_INDEX_NAME>")
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the partialUpdateObject method.
#
# Partial update with string value
def snippet_for_partial_update_object
  # >SEPARATOR partialUpdateObject default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.partial_update_object(
    "theIndexName",
    "uniqueID",
    {id1: "test", id2: BuiltInOperation.new(_operation: "AddUnique", value: "test2")},
    true
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the removeUserId method.
#
# removeUserId
def snippet_for_remove_user_id
  # >SEPARATOR removeUserId default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.remove_user_id("uniqueID")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the replaceSources method.
#
# replaceSources
def snippet_for_replace_sources
  # >SEPARATOR replaceSources default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.replace_sources([Source.new(source: "theSource", description: "theDescription")])

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the restoreApiKey method.
#
# restoreApiKey
def snippet_for_restore_api_key
  # >SEPARATOR restoreApiKey default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.restore_api_key("myApiKey")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the saveObject method.
#
# saveObject
def snippet_for_save_object
  # >SEPARATOR saveObject default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.save_object("<YOUR_INDEX_NAME>", {objectID: "id", test: "val"})

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the saveRule method.
#
# saveRule with minimal parameters
def snippet_for_save_rule
  # >SEPARATOR saveRule default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.save_rule(
    "indexName",
    "id1",
    Rule.new(object_id: "id1", conditions: [Condition.new(pattern: "apple", anchoring: "contains")])
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the saveRules method.
#
# saveRules with minimal parameters
def snippet_for_save_rules
  # >SEPARATOR saveRules default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.save_rules(
    "<YOUR_INDEX_NAME>",
    [
      Rule.new(object_id: "a-rule-id", conditions: [Condition.new(pattern: "smartphone", anchoring: "contains")]),
      Rule.new(object_id: "a-second-rule-id", conditions: [Condition.new(pattern: "apple", anchoring: "contains")])
    ],
    false,
    true
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the saveSynonym method.
#
# saveSynonym
def snippet_for_save_synonym
  # >SEPARATOR saveSynonym default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.save_synonym(
    "indexName",
    "id1",
    SynonymHit.new(object_id: "id1", type: "synonym", synonyms: ["car", "vehicule", "auto"]),
    true
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the saveSynonyms method.
#
# saveSynonyms
def snippet_for_save_synonyms
  # >SEPARATOR saveSynonyms default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.save_synonyms(
    "<YOUR_INDEX_NAME>",
    [
      SynonymHit.new(object_id: "id1", type: "synonym", synonyms: ["car", "vehicule", "auto"]),
      SynonymHit.new(object_id: "id2", type: "onewaysynonym", input: "iphone", synonyms: ["ephone", "aphone", "yphone"])
    ],
    true,
    true
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the search method.
#
# withHitsPerPage
def snippet_for_search
  # >SEPARATOR search withHitsPerPage
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.search(
    SearchMethodParams.new(
      requests: [SearchForHits.new(index_name: "<YOUR_INDEX_NAME>", query: "<YOUR_QUERY>", hits_per_page: 50)]
    )
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the search method.
#
# filterOnly
def snippet_for_search1
  # >SEPARATOR search filterOnly
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.search(
    SearchMethodParams.new(
      requests: [
        SearchForHits.new(index_name: "<YOUR_INDEX_NAME>", query: "<YOUR_QUERY>", filters: "actor:Scarlett Johansson")
      ]
    )
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the search method.
#
# filterOr
def snippet_for_search2
  # >SEPARATOR search filterOr
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.search(
    SearchMethodParams.new(
      requests: [
        SearchForHits.new(
          index_name: "<YOUR_INDEX_NAME>",
          query: "<YOUR_QUERY>",
          filters: "actor:Tom Cruise OR actor:Scarlett Johansson"
        )
      ]
    )
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the search method.
#
# filterNot
def snippet_for_search3
  # >SEPARATOR search filterNot
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.search(
    SearchMethodParams.new(
      requests: [
        SearchForHits.new(index_name: "<YOUR_INDEX_NAME>", query: "<YOUR_QUERY>", filters: "NOT actor:Nicolas Cage")
      ]
    )
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the search method.
#
# retrieveFacets
def snippet_for_search6
  # >SEPARATOR search retrieveFacets
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.search(
    SearchMethodParams.new(
      requests: [SearchForHits.new(index_name: "<YOUR_INDEX_NAME>", query: "<YOUR_QUERY>", facets: ["author", "genre"])]
    )
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the search method.
#
# retrieveFacetsWildcard
def snippet_for_search7
  # >SEPARATOR search retrieveFacetsWildcard
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.search(
    SearchMethodParams.new(
      requests: [SearchForHits.new(index_name: "<YOUR_INDEX_NAME>", query: "<YOUR_QUERY>", facets: ["*"])]
    )
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the searchDictionaryEntries method.
#
# get searchDictionaryEntries results with minimal parameters
def snippet_for_search_dictionary_entries
  # >SEPARATOR searchDictionaryEntries default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.search_dictionary_entries("stopwords", SearchDictionaryEntriesParams.new(query: "about"))

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the searchForFacetValues method.
#
# get searchForFacetValues results with minimal parameters
def snippet_for_search_for_facet_values
  # >SEPARATOR searchForFacetValues default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.search_for_facet_values("indexName", "facetName")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the searchRules method.
#
# searchRules
def snippet_for_search_rules
  # >SEPARATOR searchRules default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.search_rules("indexName", SearchRulesParams.new(query: "something"))

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the searchSingleIndex method.
#
# search with minimal parameters
def snippet_for_search_single_index
  # >SEPARATOR searchSingleIndex default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.search_single_index("indexName")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the searchSynonyms method.
#
# searchSynonyms with minimal parameters
def snippet_for_search_synonyms
  # >SEPARATOR searchSynonyms default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.search_synonyms("indexName")

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the searchUserIds method.
#
# searchUserIds
def snippet_for_search_user_ids
  # >SEPARATOR searchUserIds default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.search_user_ids(
    SearchUserIdsParams.new(query: "test", cluster_name: "theClusterName", page: 5, hits_per_page: 10)
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the setDictionarySettings method.
#
# get setDictionarySettings results with minimal parameters
def snippet_for_set_dictionary_settings
  # >SEPARATOR setDictionarySettings default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.set_dictionary_settings(
    DictionarySettingsParams.new(
      disable_standard_entries: StandardEntries.new(plurals: {fr: false, en: false, ru: true})
    )
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the setSettings method.
#
# setSettingsAttributesForFaceting
def snippet_for_set_settings
  # >SEPARATOR setSettings setSettingsAttributesForFaceting
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.set_settings(
    "<YOUR_INDEX_NAME>",
    IndexSettings.new(attributes_for_faceting: ["actor", "filterOnly(category)", "searchable(publisher)"])
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end

# Snippet for the updateApiKey method.
#
# updateApiKey
def snippet_for_update_api_key
  # >SEPARATOR updateApiKey default
  # Initialize the client
  client = Algolia::SearchClient.create("YOUR_APP_ID", "YOUR_API_KEY")

  # Call the API
  response = client.update_api_key(
    "myApiKey",
    ApiKey.new(acl: ["search", "addObject"], validity: 300, max_queries_per_ip_per_hour: 100, max_hits_per_query: 20)
  )

  # use the class directly
  puts(response)

  # print the JSON response
  puts(response.to_json)
  # SEPARATOR<
end
