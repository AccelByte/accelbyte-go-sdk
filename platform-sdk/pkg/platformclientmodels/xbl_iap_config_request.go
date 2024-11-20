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

// XblIAPConfigRequest Xbl IAP config request
//
// swagger:model Xbl IAP config request.
type XblIAPConfigRequest struct {

	// enable XBL stream event job, will enable stream event job to sync XBL refund chargeback etc event if it's true
	EnableClawback bool `json:"enableClawback"`

	// entraAppClientId
	EntraAppClientID string `json:"entraAppClientId,omitempty"`

	// entraAppClientSecret
	EntraAppClientSecret string `json:"entraAppClientSecret,omitempty"`

	// entraTenantId
	EntraTenantID string `json:"entraTenantId,omitempty"`

	// deprecated - relyingPartyCert
	RelyingPartyCert string `json:"relyingPartyCert,omitempty"`
}

// Validate validates this Xbl IAP config request
func (m *XblIAPConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *XblIAPConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XblIAPConfigRequest) UnmarshalBinary(b []byte) error {
	var res XblIAPConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
