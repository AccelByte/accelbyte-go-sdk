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

// ThirdPartySubscriptionOwnership Third party subscription ownership
//
// swagger:model Third party subscription ownership.
type ThirdPartySubscriptionOwnership struct {

	// ownership
	// Required: true
	Owned *bool `json:"owned"`
}

// Validate validates this Third party subscription ownership
func (m *ThirdPartySubscriptionOwnership) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateOwned(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ThirdPartySubscriptionOwnership) validateOwned(formats strfmt.Registry) error {

	if err := validate.Required("owned", "body", m.Owned); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ThirdPartySubscriptionOwnership) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ThirdPartySubscriptionOwnership) UnmarshalBinary(b []byte) error {
	var res ThirdPartySubscriptionOwnership
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
