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

// XblIAPConfigRequest Xbl IAP config request
//
// swagger:model Xbl IAP config request.
type XblIAPConfigRequest struct {

	// relyingPartyCert
	// Required: true
	RelyingPartyCert *string `json:"relyingPartyCert"`
}

// Validate validates this Xbl IAP config request
func (m *XblIAPConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRelyingPartyCert(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *XblIAPConfigRequest) validateRelyingPartyCert(formats strfmt.Registry) error {

	if err := validate.Required("relyingPartyCert", "body", m.RelyingPartyCert); err != nil {
		return err
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
