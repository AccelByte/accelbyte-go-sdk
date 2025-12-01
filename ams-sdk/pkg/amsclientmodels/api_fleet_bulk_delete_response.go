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

// APIFleetBulkDeleteResponse Api fleet bulk delete response
//
// swagger:model Api fleet bulk delete response.
type APIFleetBulkDeleteResponse struct {

	// errors
	// Required: true
	Errors []*APIFleetBulkActionErrorItemResponse `json:"errors"`

	// successcount
	// Required: true
	// Format: int32
	SuccessCount *int32 `json:"successCount"`

	// totalcount
	// Required: true
	// Format: int32
	TotalCount *int32 `json:"totalCount"`
}

// Validate validates this Api fleet bulk delete response
func (m *APIFleetBulkDeleteResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateErrors(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSuccessCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIFleetBulkDeleteResponse) validateErrors(formats strfmt.Registry) error {

	if err := validate.Required("errors", "body", m.Errors); err != nil {
		return err
	}

	for i := 0; i < len(m.Errors); i++ {
		if swag.IsZero(m.Errors[i]) { // not required
			continue
		}

		if m.Errors[i] != nil {
			if err := m.Errors[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("errors" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *APIFleetBulkDeleteResponse) validateSuccessCount(formats strfmt.Registry) error {

	if err := validate.Required("successCount", "body", m.SuccessCount); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetBulkDeleteResponse) validateTotalCount(formats strfmt.Registry) error {

	if err := validate.Required("totalCount", "body", m.TotalCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIFleetBulkDeleteResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIFleetBulkDeleteResponse) UnmarshalBinary(b []byte) error {
	var res APIFleetBulkDeleteResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
