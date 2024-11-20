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

// XblIAPConfigInfo Xbl IAP config info
//
// swagger:model Xbl IAP config info.
type XblIAPConfigInfo struct {

	// businessPartnerCertExpiredTime
	// Format: date-time
	BusinessPartnerCertExpiredTime *strfmt.DateTime `json:"businessPartnerCertExpiredTime,omitempty"`

	// businessPartnerCertFileName
	BusinessPartnerCertFileName string `json:"businessPartnerCertFileName,omitempty"`

	// enable XBL stream event job, will enable stream event job to sync XBL refund chargeback etc event if it's true
	EnableClawback bool `json:"enableClawback"`

	// entraAppClientId
	EntraAppClientID string `json:"entraAppClientId,omitempty"`

	// entraAppClientSecret
	EntraAppClientSecret string `json:"entraAppClientSecret,omitempty"`

	// entraTenantId
	EntraTenantID string `json:"entraTenantId,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// password
	Password string `json:"password,omitempty"`

	// deprecated - relyingPartyCert
	RelyingPartyCert string `json:"relyingPartyCert,omitempty"`
}

// Validate validates this Xbl IAP config info
func (m *XblIAPConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *XblIAPConfigInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *XblIAPConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XblIAPConfigInfo) UnmarshalBinary(b []byte) error {
	var res XblIAPConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
