// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
package search

import (
	"encoding/json"
	"fmt"
)

// AttributeToUpdate - struct for AttributeToUpdate.
type AttributeToUpdate struct {
	BuiltInOperation *BuiltInOperation
	String           *string
}

// stringAsAttributeToUpdate is a convenience function that returns string wrapped in AttributeToUpdate.
func StringAsAttributeToUpdate(v string) *AttributeToUpdate {
	return &AttributeToUpdate{
		String: &v,
	}
}

// BuiltInOperationAsAttributeToUpdate is a convenience function that returns BuiltInOperation wrapped in AttributeToUpdate.
func BuiltInOperationAsAttributeToUpdate(v *BuiltInOperation) *AttributeToUpdate {
	return &AttributeToUpdate{
		BuiltInOperation: v,
	}
}

// Unmarshal JSON data into one of the pointers in the struct.
func (dst *AttributeToUpdate) UnmarshalJSON(data []byte) error {
	var err error
	// try to unmarshal data into String
	err = newStrictDecoder(data).Decode(&dst.String)
	if err == nil && validateStruct(dst.String) == nil {
		return nil // found the correct type
	} else {
		dst.String = nil
	}
	// try to unmarshal data into BuiltInOperation
	err = newStrictDecoder(data).Decode(&dst.BuiltInOperation)
	if err == nil && validateStruct(dst.BuiltInOperation) == nil {
		return nil // found the correct type
	} else {
		dst.BuiltInOperation = nil
	}

	return fmt.Errorf("Data failed to match schemas in oneOf(AttributeToUpdate)")
}

// Marshal data from the first non-nil pointers in the struct to JSON.
func (src AttributeToUpdate) MarshalJSON() ([]byte, error) {
	if src.BuiltInOperation != nil {
		serialized, err := json.Marshal(&src.BuiltInOperation)
		if err != nil {
			return nil, fmt.Errorf("failed to unmarshal one of BuiltInOperation of AttributeToUpdate: %w", err)
		}

		return serialized, nil
	}

	if src.String != nil {
		serialized, err := json.Marshal(&src.String)
		if err != nil {
			return nil, fmt.Errorf("failed to unmarshal one of String of AttributeToUpdate: %w", err)
		}

		return serialized, nil
	}

	return nil, nil // no data in oneOf schemas
}

// Get the actual instance.
func (obj AttributeToUpdate) GetActualInstance() any {
	if obj.BuiltInOperation != nil {
		return *obj.BuiltInOperation
	}

	if obj.String != nil {
		return *obj.String
	}

	// all schemas are nil
	return nil
}
