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

// APIFleetBulkActionErrorItemResponse Api fleet bulk action error item response
//
// swagger:model Api fleet bulk action error item response.
type APIFleetBulkActionErrorItemResponse struct {

	// errormessage
	ErrorMessage string `json:"errorMessage,omitempty"`

	// errortype
	ErrorType string `json:"errorType,omitempty"`

	// fleetid
	// Required: true
	FleetID *string `json:"fleetId"`
}

// Validate validates this Api fleet bulk action error item response
func (m *APIFleetBulkActionErrorItemResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFleetID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIFleetBulkActionErrorItemResponse) validateFleetID(formats strfmt.Registry) error {

	if err := validate.Required("fleetId", "body", m.FleetID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIFleetBulkActionErrorItemResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIFleetBulkActionErrorItemResponse) UnmarshalBinary(b []byte) error {
	var res APIFleetBulkActionErrorItemResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
