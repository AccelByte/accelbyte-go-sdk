// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelBulkSubscribeItem Apimodel bulk subscribe item
//
// swagger:model Apimodel bulk subscribe item.
type ApimodelBulkSubscribeItem struct {

	// notificationtype
	// Required: true
	NotificationType map[string]bool `json:"notificationType"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Apimodel bulk subscribe item
func (m *ApimodelBulkSubscribeItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelBulkSubscribeItem) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelBulkSubscribeItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelBulkSubscribeItem) UnmarshalBinary(b []byte) error {
	var res ApimodelBulkSubscribeItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
