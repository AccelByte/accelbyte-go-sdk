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

// ModelsGetInboxMessagesResponseData Models get inbox messages response data
//
// swagger:model Models get inbox messages response data.
type ModelsGetInboxMessagesResponseData struct {

	// category
	Category string `json:"category,omitempty"`

	// createdat
	// Required: true
	// Format: int64
	CreatedAt *int64 `json:"createdAt"`

	// expiredat
	// Required: true
	// Format: int64
	ExpiredAt *int64 `json:"expiredAt"`

	// id
	// Required: true
	ID *string `json:"id"`

	// message
	// Required: true
	Message interface{} `json:"message"`

	// scope
	// Enum: ['NAMESPACE', 'USER']
	// Required: true
	Scope *string `json:"scope"`

	// senderid
	// Required: true
	SenderID *string `json:"senderId"`

	// status
	// Enum: ['DRAFT', 'SENT', 'UNSENT']
	// Required: true
	Status *string `json:"status"`

	// updatedat
	// Required: true
	// Format: int64
	UpdatedAt *int64 `json:"updatedAt"`

	// userids
	// Required: true
	UserIds []string `json:"userIds"`
}

// Validate validates this Models get inbox messages response data
func (m *ModelsGetInboxMessagesResponseData) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExpiredAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScope(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSenderID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
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

func (m *ModelsGetInboxMessagesResponseData) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetInboxMessagesResponseData) validateExpiredAt(formats strfmt.Registry) error {

	if err := validate.Required("expiredAt", "body", m.ExpiredAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetInboxMessagesResponseData) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

var modelsGetInboxMessagesResponseDataTypeScopePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["NAMESPACE", "USER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsGetInboxMessagesResponseDataTypeScopePropEnum = append(modelsGetInboxMessagesResponseDataTypeScopePropEnum, v)
	}
}

const (

	// ModelsGetInboxMessagesResponseDataScopeNAMESPACE captures enum value "NAMESPACE"
	ModelsGetInboxMessagesResponseDataScopeNAMESPACE string = "NAMESPACE"

	// ModelsGetInboxMessagesResponseDataScopeUSER captures enum value "USER"
	ModelsGetInboxMessagesResponseDataScopeUSER string = "USER"
)

// prop value enum
func (m *ModelsGetInboxMessagesResponseData) validateScopeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsGetInboxMessagesResponseDataTypeScopePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsGetInboxMessagesResponseData) validateScope(formats strfmt.Registry) error {

	if err := validate.Required("scope", "body", m.Scope); err != nil {
		return err
	}

	// value enum
	if err := m.validateScopeEnum("scope", "body", *m.Scope); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetInboxMessagesResponseData) validateSenderID(formats strfmt.Registry) error {

	if err := validate.Required("senderId", "body", m.SenderID); err != nil {
		return err
	}

	return nil
}

var modelsGetInboxMessagesResponseDataTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DRAFT", "SENT", "UNSENT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsGetInboxMessagesResponseDataTypeStatusPropEnum = append(modelsGetInboxMessagesResponseDataTypeStatusPropEnum, v)
	}
}

const (

	// ModelsGetInboxMessagesResponseDataStatusDRAFT captures enum value "DRAFT"
	ModelsGetInboxMessagesResponseDataStatusDRAFT string = "DRAFT"

	// ModelsGetInboxMessagesResponseDataStatusSENT captures enum value "SENT"
	ModelsGetInboxMessagesResponseDataStatusSENT string = "SENT"

	// ModelsGetInboxMessagesResponseDataStatusUNSENT captures enum value "UNSENT"
	ModelsGetInboxMessagesResponseDataStatusUNSENT string = "UNSENT"
)

// prop value enum
func (m *ModelsGetInboxMessagesResponseData) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsGetInboxMessagesResponseDataTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsGetInboxMessagesResponseData) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetInboxMessagesResponseData) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetInboxMessagesResponseData) validateUserIds(formats strfmt.Registry) error {

	if err := validate.Required("userIds", "body", m.UserIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetInboxMessagesResponseData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetInboxMessagesResponseData) UnmarshalBinary(b []byte) error {
	var res ModelsGetInboxMessagesResponseData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
