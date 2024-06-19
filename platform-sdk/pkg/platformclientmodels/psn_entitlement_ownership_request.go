// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// PsnEntitlementOwnershipRequest Psn entitlement ownership request
//
// swagger:model Psn entitlement ownership request.
type PsnEntitlementOwnershipRequest struct {

	// accesstoken
	AccessToken string `json:"accessToken,omitempty"`

	// servicelabel
	// Format: int32
	ServiceLabel int32 `json:"serviceLabel,omitempty"`
}

// Validate validates this Psn entitlement ownership request
func (m *PsnEntitlementOwnershipRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PsnEntitlementOwnershipRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PsnEntitlementOwnershipRequest) UnmarshalBinary(b []byte) error {
	var res PsnEntitlementOwnershipRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
