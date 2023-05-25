// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIFleetListResponse Api fleet list response
//
// swagger:model Api fleet list response.
type APIFleetListResponse struct {

	// fleets
	// Required: true
	Fleets []*APIFleetListItemResponse `json:"fleets"`
}

// Validate validates this Api fleet list response
func (m *APIFleetListResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFleets(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIFleetListResponse) validateFleets(formats strfmt.Registry) error {

	if err := validate.Required("fleets", "body", m.Fleets); err != nil {
		return err
	}

	for i := 0; i < len(m.Fleets); i++ {
		if swag.IsZero(m.Fleets[i]) { // not required
			continue
		}

		if m.Fleets[i] != nil {
			if err := m.Fleets[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("fleets" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIFleetListResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIFleetListResponse) UnmarshalBinary(b []byte) error {
	var res APIFleetListResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
