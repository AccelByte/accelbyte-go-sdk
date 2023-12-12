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

// ModelsUpdateInboxMessageRequest Models update inbox message request
//
// swagger:model Models update inbox message request.
type ModelsUpdateInboxMessageRequest struct {

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

	// userids
	// Required: true
	UserIds []string `json:"userIds"`
}

// Validate validates this Models update inbox message request
func (m *ModelsUpdateInboxMessageRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExpiredAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScope(formats); err != nil {
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

func (m *ModelsUpdateInboxMessageRequest) validateExpiredAt(formats strfmt.Registry) error {

	if err := validate.Required("expiredAt", "body", m.ExpiredAt); err != nil {
		return err
	}

	return nil
}

var modelsUpdateInboxMessageRequestTypeScopePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["NAMESPACE", "USER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsUpdateInboxMessageRequestTypeScopePropEnum = append(modelsUpdateInboxMessageRequestTypeScopePropEnum, v)
	}
}

const (

	// ModelsUpdateInboxMessageRequestScopeNAMESPACE captures enum value "NAMESPACE"
	ModelsUpdateInboxMessageRequestScopeNAMESPACE string = "NAMESPACE"

	// ModelsUpdateInboxMessageRequestScopeUSER captures enum value "USER"
	ModelsUpdateInboxMessageRequestScopeUSER string = "USER"
)

// prop value enum
func (m *ModelsUpdateInboxMessageRequest) validateScopeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsUpdateInboxMessageRequestTypeScopePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsUpdateInboxMessageRequest) validateScope(formats strfmt.Registry) error {

	if err := validate.Required("scope", "body", m.Scope); err != nil {
		return err
	}

	// value enum
	if err := m.validateScopeEnum("scope", "body", *m.Scope); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateInboxMessageRequest) validateUserIds(formats strfmt.Registry) error {

	if err := validate.Required("userIds", "body", m.UserIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateInboxMessageRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateInboxMessageRequest) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateInboxMessageRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
