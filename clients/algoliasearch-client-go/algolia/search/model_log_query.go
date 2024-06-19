// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
package search

import (
	"encoding/json"
	"fmt"
)

// LogQuery struct for LogQuery.
type LogQuery struct {
	// Index targeted by the query.
	IndexName *string `json:"index_name,omitempty"`
	// A user identifier.
	UserToken *string `json:"user_token,omitempty"`
	// Unique query identifier.
	QueryId *string `json:"query_id,omitempty"`
}

type LogQueryOption func(f *LogQuery)

func WithLogQueryIndexName(val string) LogQueryOption {
	return func(f *LogQuery) {
		f.IndexName = &val
	}
}

func WithLogQueryUserToken(val string) LogQueryOption {
	return func(f *LogQuery) {
		f.UserToken = &val
	}
}

func WithLogQueryQueryId(val string) LogQueryOption {
	return func(f *LogQuery) {
		f.QueryId = &val
	}
}

// NewLogQuery instantiates a new LogQuery object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed.
func NewLogQuery(opts ...LogQueryOption) *LogQuery {
	this := &LogQuery{}
	for _, opt := range opts {
		opt(this)
	}
	return this
}

// NewEmptyLogQuery return a pointer to an empty LogQuery object.
func NewEmptyLogQuery() *LogQuery {
	return &LogQuery{}
}

// GetIndexName returns the IndexName field value if set, zero value otherwise.
func (o *LogQuery) GetIndexName() string {
	if o == nil || o.IndexName == nil {
		var ret string
		return ret
	}
	return *o.IndexName
}

// GetIndexNameOk returns a tuple with the IndexName field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *LogQuery) GetIndexNameOk() (*string, bool) {
	if o == nil || o.IndexName == nil {
		return nil, false
	}
	return o.IndexName, true
}

// HasIndexName returns a boolean if a field has been set.
func (o *LogQuery) HasIndexName() bool {
	if o != nil && o.IndexName != nil {
		return true
	}

	return false
}

// SetIndexName gets a reference to the given string and assigns it to the IndexName field.
func (o *LogQuery) SetIndexName(v string) *LogQuery {
	o.IndexName = &v
	return o
}

// GetUserToken returns the UserToken field value if set, zero value otherwise.
func (o *LogQuery) GetUserToken() string {
	if o == nil || o.UserToken == nil {
		var ret string
		return ret
	}
	return *o.UserToken
}

// GetUserTokenOk returns a tuple with the UserToken field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *LogQuery) GetUserTokenOk() (*string, bool) {
	if o == nil || o.UserToken == nil {
		return nil, false
	}
	return o.UserToken, true
}

// HasUserToken returns a boolean if a field has been set.
func (o *LogQuery) HasUserToken() bool {
	if o != nil && o.UserToken != nil {
		return true
	}

	return false
}

// SetUserToken gets a reference to the given string and assigns it to the UserToken field.
func (o *LogQuery) SetUserToken(v string) *LogQuery {
	o.UserToken = &v
	return o
}

// GetQueryId returns the QueryId field value if set, zero value otherwise.
func (o *LogQuery) GetQueryId() string {
	if o == nil || o.QueryId == nil {
		var ret string
		return ret
	}
	return *o.QueryId
}

// GetQueryIdOk returns a tuple with the QueryId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *LogQuery) GetQueryIdOk() (*string, bool) {
	if o == nil || o.QueryId == nil {
		return nil, false
	}
	return o.QueryId, true
}

// HasQueryId returns a boolean if a field has been set.
func (o *LogQuery) HasQueryId() bool {
	if o != nil && o.QueryId != nil {
		return true
	}

	return false
}

// SetQueryId gets a reference to the given string and assigns it to the QueryId field.
func (o *LogQuery) SetQueryId(v string) *LogQuery {
	o.QueryId = &v
	return o
}

func (o LogQuery) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]any{}
	if o.IndexName != nil {
		toSerialize["index_name"] = o.IndexName
	}
	if o.UserToken != nil {
		toSerialize["user_token"] = o.UserToken
	}
	if o.QueryId != nil {
		toSerialize["query_id"] = o.QueryId
	}
	serialized, err := json.Marshal(toSerialize)
	if err != nil {
		return nil, fmt.Errorf("failed to marshal LogQuery: %w", err)
	}

	return serialized, nil
}

func (o LogQuery) String() string {
	out := ""
	out += fmt.Sprintf("  index_name=%v\n", o.IndexName)
	out += fmt.Sprintf("  user_token=%v\n", o.UserToken)
	out += fmt.Sprintf("  query_id=%v\n", o.QueryId)
	return fmt.Sprintf("LogQuery {\n%s}", out)
}
