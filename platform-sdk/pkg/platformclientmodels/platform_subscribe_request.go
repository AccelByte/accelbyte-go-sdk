// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PlatformSubscribeRequest Platform subscribe request
//
// swagger:model Platform subscribe request.
type PlatformSubscribeRequest struct {

	// grant days
	// Required: true
	// Format: int32
	GrantDays *int32 `json:"grantDays"`

	// subscription item id
	// Required: true
	ItemID *string `json:"itemId"`

	// language
	Language string `json:"language,omitempty"`

	// subscribe reason
	Reason string `json:"reason,omitempty"`

	// region
	Region string `json:"region,omitempty"`

	// source
	Source string `json:"source,omitempty"`
}

// Validate validates this Platform subscribe request
func (m *PlatformSubscribeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGrantDays(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PlatformSubscribeRequest) validateGrantDays(formats strfmt.Registry) error {

	if err := validate.Required("grantDays", "body", m.GrantDays); err != nil {
		return err
	}

	return nil
}

func (m *PlatformSubscribeRequest) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PlatformSubscribeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlatformSubscribeRequest) UnmarshalBinary(b []byte) error {
	var res PlatformSubscribeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
