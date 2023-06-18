// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIFleetClaimByKeysReq Api fleet claim by keys req
//
// swagger:model Api fleet claim by keys req.
type APIFleetClaimByKeysReq struct {

	// claimkeys
	// Required: true
	ClaimKeys []string `json:"claimKeys"`

	// regions
	// Required: true
	Regions []string `json:"regions"`
}

// Validate validates this Api fleet claim by keys req
func (m *APIFleetClaimByKeysReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClaimKeys(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegions(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIFleetClaimByKeysReq) validateClaimKeys(formats strfmt.Registry) error {

	if err := validate.Required("claimKeys", "body", m.ClaimKeys); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetClaimByKeysReq) validateRegions(formats strfmt.Registry) error {

	if err := validate.Required("regions", "body", m.Regions); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIFleetClaimByKeysReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIFleetClaimByKeysReq) UnmarshalBinary(b []byte) error {
	var res APIFleetClaimByKeysReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
