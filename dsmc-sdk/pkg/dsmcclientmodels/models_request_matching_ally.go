// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsRequestMatchingAlly Models request matching ally
//
// swagger:model Models request matching ally.
type ModelsRequestMatchingAlly struct {

	// matching_parties
	// Required: true
	MatchingParties []*ModelsRequestMatchParty `json:"matching_parties"`
}

// Validate validates this Models request matching ally
func (m *ModelsRequestMatchingAlly) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMatchingParties(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsRequestMatchingAlly) validateMatchingParties(formats strfmt.Registry) error {

	if err := validate.Required("matching_parties", "body", m.MatchingParties); err != nil {
		return err
	}

	for i := 0; i < len(m.MatchingParties); i++ {
		if swag.IsZero(m.MatchingParties[i]) { // not required
			continue
		}

		if m.MatchingParties[i] != nil {
			if err := m.MatchingParties[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("matching_parties" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsRequestMatchingAlly) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRequestMatchingAlly) UnmarshalBinary(b []byte) error {
	var res ModelsRequestMatchingAlly
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
