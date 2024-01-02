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

// EntitlementConfigInfo Entitlement config info
//
// swagger:model Entitlement config info.
type EntitlementConfigInfo struct {

	// enableentitlementoriginfeature
	EnableEntitlementOriginFeature bool `json:"enableEntitlementOriginFeature"`

	// namespace
	Namespace string `json:"namespace,omitempty"`
}

// Validate validates this Entitlement config info
func (m *EntitlementConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementConfigInfo) UnmarshalBinary(b []byte) error {
	var res EntitlementConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
