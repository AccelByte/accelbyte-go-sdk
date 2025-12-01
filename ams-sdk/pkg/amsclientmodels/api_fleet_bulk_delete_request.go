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

// APIFleetBulkDeleteRequest Api fleet bulk delete request
//
// swagger:model Api fleet bulk delete request.
type APIFleetBulkDeleteRequest struct {

	// fleetids
	// Required: true
	FleetIds []string `json:"fleetIds"`
}

// Validate validates this Api fleet bulk delete request
func (m *APIFleetBulkDeleteRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFleetIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIFleetBulkDeleteRequest) validateFleetIds(formats strfmt.Registry) error {

	if err := validate.Required("fleetIds", "body", m.FleetIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIFleetBulkDeleteRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIFleetBulkDeleteRequest) UnmarshalBinary(b []byte) error {
	var res APIFleetBulkDeleteRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
