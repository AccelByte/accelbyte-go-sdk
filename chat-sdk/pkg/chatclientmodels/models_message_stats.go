// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMessageStats Models message stats
//
// swagger:model Models message stats.
type ModelsMessageStats struct {

	// id
	// Required: true
	ID *string `json:"id"`

	// messageread
	// Required: true
	// Format: int32
	MessageRead *int32 `json:"messageRead"`

	// messagestored
	// Required: true
	// Format: int32
	MessageStored *int32 `json:"messageStored"`

	// notificationsent
	// Required: true
	// Format: int32
	NotificationSent *int32 `json:"notificationSent"`
}

// Validate validates this Models message stats
func (m *ModelsMessageStats) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMessageRead(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMessageStored(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNotificationSent(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMessageStats) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMessageStats) validateMessageRead(formats strfmt.Registry) error {

	if err := validate.Required("messageRead", "body", m.MessageRead); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMessageStats) validateMessageStored(formats strfmt.Registry) error {

	if err := validate.Required("messageStored", "body", m.MessageStored); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMessageStats) validateNotificationSent(formats strfmt.Registry) error {

	if err := validate.Required("notificationSent", "body", m.NotificationSent); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMessageStats) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMessageStats) UnmarshalBinary(b []byte) error {
	var res ModelsMessageStats
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
