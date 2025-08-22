// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ApimodelBulkSubscribeItem Apimodel bulk subscribe item
//
// swagger:model Apimodel bulk subscribe item.
type ApimodelBulkSubscribeItem struct {

	// emailaddress
	EmailAddress string `json:"emailAddress,omitempty"`

	// notificationtype
	// Required: true
	NotificationType map[string]bool `json:"notificationType"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Apimodel bulk subscribe item
func (m *ApimodelBulkSubscribeItem) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
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
