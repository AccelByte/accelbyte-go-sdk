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

// ModelsSaveInboxMessageRequest Models save inbox message request
//
// swagger:model Models save inbox message request.
type ModelsSaveInboxMessageRequest struct {

	// category
	Category string `json:"category,omitempty"`

	// expiredat
	// Required: true
	// Format: int64
	ExpiredAt *int64 `json:"expiredAt"`

	// message
	// Required: true
	Message interface{} `json:"message"`

	// scope
	// Enum: ['NAMESPACE', 'USER']
	// Required: true
	Scope *string `json:"scope"`

	// status
	// Enum: ['DRAFT', 'SENT']
	// Required: true
	Status *string `json:"status"`

	// userids
	// Required: true
	UserIds []string `json:"userIds"`
}

// Validate validates this Models save inbox message request
func (m *ModelsSaveInboxMessageRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExpiredAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScope(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsSaveInboxMessageRequest) validateExpiredAt(formats strfmt.Registry) error {

	if err := validate.Required("expiredAt", "body", m.ExpiredAt); err != nil {
		return err
	}

	return nil
}

var modelsSaveInboxMessageRequestTypeScopePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["NAMESPACE", "USER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsSaveInboxMessageRequestTypeScopePropEnum = append(modelsSaveInboxMessageRequestTypeScopePropEnum, v)
	}
}

const (

	// ModelsSaveInboxMessageRequestScopeNAMESPACE captures enum value "NAMESPACE"
	ModelsSaveInboxMessageRequestScopeNAMESPACE string = "NAMESPACE"

	// ModelsSaveInboxMessageRequestScopeUSER captures enum value "USER"
	ModelsSaveInboxMessageRequestScopeUSER string = "USER"
)

// prop value enum
func (m *ModelsSaveInboxMessageRequest) validateScopeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsSaveInboxMessageRequestTypeScopePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsSaveInboxMessageRequest) validateScope(formats strfmt.Registry) error {

	if err := validate.Required("scope", "body", m.Scope); err != nil {
		return err
	}

	// value enum
	if err := m.validateScopeEnum("scope", "body", *m.Scope); err != nil {
		return err
	}

	return nil
}

var modelsSaveInboxMessageRequestTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DRAFT", "SENT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsSaveInboxMessageRequestTypeStatusPropEnum = append(modelsSaveInboxMessageRequestTypeStatusPropEnum, v)
	}
}

const (

	// ModelsSaveInboxMessageRequestStatusDRAFT captures enum value "DRAFT"
	ModelsSaveInboxMessageRequestStatusDRAFT string = "DRAFT"

	// ModelsSaveInboxMessageRequestStatusSENT captures enum value "SENT"
	ModelsSaveInboxMessageRequestStatusSENT string = "SENT"
)

// prop value enum
func (m *ModelsSaveInboxMessageRequest) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsSaveInboxMessageRequestTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsSaveInboxMessageRequest) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsSaveInboxMessageRequest) validateUserIds(formats strfmt.Registry) error {

	if err := validate.Required("userIds", "body", m.UserIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSaveInboxMessageRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSaveInboxMessageRequest) UnmarshalBinary(b []byte) error {
	var res ModelsSaveInboxMessageRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
