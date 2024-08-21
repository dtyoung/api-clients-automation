// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
package search

import (
	"encoding/json"
	"fmt"
)

// OptionalFilters - Filters to promote or demote records in the search results.  Optional filters work like facet filters, but they don't exclude records from the search results. Records that match the optional filter rank before records that don't match. If you're using a negative filter `facet:-value`, matching records rank after records that don't match.  - Optional filters don't work on virtual replicas. - Optional filters are applied _after_ sort-by attributes. - Optional filters don't work with numeric attributes.
type OptionalFilters struct {
	ArrayOfOptionalFilters *[]OptionalFilters
	String                 *string
}

// []OptionalFiltersAsOptionalFilters is a convenience function that returns []OptionalFilters wrapped in OptionalFilters.
func ArrayOfOptionalFiltersAsOptionalFilters(v []OptionalFilters) *OptionalFilters {
	return &OptionalFilters{
		ArrayOfOptionalFilters: &v,
	}
}

// stringAsOptionalFilters is a convenience function that returns string wrapped in OptionalFilters.
func StringAsOptionalFilters(v string) *OptionalFilters {
	return &OptionalFilters{
		String: &v,
	}
}

// Unmarshal JSON data into one of the pointers in the struct.
func (dst *OptionalFilters) UnmarshalJSON(data []byte) error {
	var err error
	// try to unmarshal data into ArrayOfOptionalFilters
	err = newStrictDecoder(data).Decode(&dst.ArrayOfOptionalFilters)
	if err == nil && validateStruct(dst.ArrayOfOptionalFilters) == nil {
		return nil // found the correct type
	} else {
		dst.ArrayOfOptionalFilters = nil
	}
	// try to unmarshal data into String
	err = newStrictDecoder(data).Decode(&dst.String)
	if err == nil && validateStruct(dst.String) == nil {
		return nil // found the correct type
	} else {
		dst.String = nil
	}

	return fmt.Errorf("Data failed to match schemas in oneOf(OptionalFilters)")
}

// Marshal data from the first non-nil pointers in the struct to JSON.
func (src OptionalFilters) MarshalJSON() ([]byte, error) {
	if src.ArrayOfOptionalFilters != nil {
		serialized, err := json.Marshal(&src.ArrayOfOptionalFilters)
		if err != nil {
			return nil, fmt.Errorf("failed to unmarshal one of ArrayOfOptionalFilters of OptionalFilters: %w", err)
		}

		return serialized, nil
	}

	if src.String != nil {
		serialized, err := json.Marshal(&src.String)
		if err != nil {
			return nil, fmt.Errorf("failed to unmarshal one of String of OptionalFilters: %w", err)
		}

		return serialized, nil
	}

	return nil, nil // no data in oneOf schemas
}

// Get the actual instance.
func (obj OptionalFilters) GetActualInstance() any {
	if obj.ArrayOfOptionalFilters != nil {
		return *obj.ArrayOfOptionalFilters
	}

	if obj.String != nil {
		return *obj.String
	}

	// all schemas are nil
	return nil
}
