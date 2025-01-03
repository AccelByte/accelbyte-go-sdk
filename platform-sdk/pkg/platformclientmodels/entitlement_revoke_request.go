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

// EntitlementRevokeRequest Entitlement revoke request
//
// swagger:model Entitlement revoke request.
type EntitlementRevokeRequest struct {

	// metadata, It is not stored in the database, only forwarded to AGS event
	Metadata interface{} `json:"metadata,omitempty"`
}

// Validate validates this Entitlement revoke request
func (m *EntitlementRevokeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementRevokeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementRevokeRequest) UnmarshalBinary(b []byte) error {
	var res EntitlementRevokeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
