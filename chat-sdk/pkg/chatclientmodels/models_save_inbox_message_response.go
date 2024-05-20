// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsSaveInboxMessageResponse Models save inbox message response
//
// swagger:model Models save inbox message response.
type ModelsSaveInboxMessageResponse struct {

	// category
	Category string `json:"category,omitempty"`

	// expiredat
	// Required: true
	// Format: int64
	ExpiredAt *int64 `json:"expiredAt"`

	// id
	// Required: true
	ID *string `json:"id"`

	// message
	Message interface{} `json:"message,omitempty"`

	// scope
	// Enum: ['NAMESPACE', 'USER']
	// Required: true
	Scope *string `json:"scope"`

	// status
	// Enum: ['DRAFT', 'SENT', 'UNSENT']
	// Required: true
	Status *string `json:"status"`

	// userids
	UserIDs []string `json:"userIDs,omitempty"`
}

// Validate validates this Models save inbox message response
func (m *ModelsSaveInboxMessageResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExpiredAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScope(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsSaveInboxMessageResponse) validateExpiredAt(formats strfmt.Registry) error {

	if err := validate.Required("expiredAt", "body", m.ExpiredAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSaveInboxMessageResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

var modelsSaveInboxMessageResponseTypeScopePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["NAMESPACE", "USER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsSaveInboxMessageResponseTypeScopePropEnum = append(modelsSaveInboxMessageResponseTypeScopePropEnum, v)
	}
}

const (

	// ModelsSaveInboxMessageResponseScopeNAMESPACE captures enum value "NAMESPACE"
	ModelsSaveInboxMessageResponseScopeNAMESPACE string = "NAMESPACE"

	// ModelsSaveInboxMessageResponseScopeUSER captures enum value "USER"
	ModelsSaveInboxMessageResponseScopeUSER string = "USER"
)

// prop value enum
func (m *ModelsSaveInboxMessageResponse) validateScopeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsSaveInboxMessageResponseTypeScopePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsSaveInboxMessageResponse) validateScope(formats strfmt.Registry) error {

	if err := validate.Required("scope", "body", m.Scope); err != nil {
		return err
	}

	// value enum
	if err := m.validateScopeEnum("scope", "body", *m.Scope); err != nil {
		return err
	}

	return nil
}

var modelsSaveInboxMessageResponseTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DRAFT", "SENT", "UNSENT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsSaveInboxMessageResponseTypeStatusPropEnum = append(modelsSaveInboxMessageResponseTypeStatusPropEnum, v)
	}
}

const (

	// ModelsSaveInboxMessageResponseStatusDRAFT captures enum value "DRAFT"
	ModelsSaveInboxMessageResponseStatusDRAFT string = "DRAFT"

	// ModelsSaveInboxMessageResponseStatusSENT captures enum value "SENT"
	ModelsSaveInboxMessageResponseStatusSENT string = "SENT"

	// ModelsSaveInboxMessageResponseStatusUNSENT captures enum value "UNSENT"
	ModelsSaveInboxMessageResponseStatusUNSENT string = "UNSENT"
)

// prop value enum
func (m *ModelsSaveInboxMessageResponse) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsSaveInboxMessageResponseTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsSaveInboxMessageResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSaveInboxMessageResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSaveInboxMessageResponse) UnmarshalBinary(b []byte) error {
	var res ModelsSaveInboxMessageResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
