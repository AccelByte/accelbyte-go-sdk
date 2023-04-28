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

// GrantSubscriptionDaysRequest Grant subscription days request
//
// swagger:model Grant subscription days request.
type GrantSubscriptionDaysRequest struct {

	// grant days
	// Required: true
	// Format: int32
	GrantDays *int32 `json:"grantDays"`

	// grant reason
	Reason string `json:"reason,omitempty"`
}

// Validate validates this Grant subscription days request
func (m *GrantSubscriptionDaysRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGrantDays(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *GrantSubscriptionDaysRequest) validateGrantDays(formats strfmt.Registry) error {

	if err := validate.Required("grantDays", "body", m.GrantDays); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *GrantSubscriptionDaysRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GrantSubscriptionDaysRequest) UnmarshalBinary(b []byte) error {
	var res GrantSubscriptionDaysRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
