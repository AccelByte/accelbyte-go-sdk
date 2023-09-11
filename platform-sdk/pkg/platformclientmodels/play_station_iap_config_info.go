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

// PlayStationIAPConfigInfo Play station IAP config info
//
// swagger:model Play station IAP config info.
type PlayStationIAPConfigInfo struct {

	// environment
	Environment string `json:"environment,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`
}

// Validate validates this Play station IAP config info
func (m *PlayStationIAPConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PlayStationIAPConfigInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PlayStationIAPConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlayStationIAPConfigInfo) UnmarshalBinary(b []byte) error {
	var res PlayStationIAPConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
