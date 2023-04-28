// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gdprclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUserPersonalDataResponse Models user personal data response
//
// swagger:model Models user personal data response.
type ModelsUserPersonalDataResponse struct {

	// data
	// Required: true
	Data []*ModelsUserPersonalData `json:"Data"`

	// paging
	// Required: true
	Paging *ModelsPagination `json:"Paging"`
}

// Validate validates this Models user personal data response
func (m *ModelsUserPersonalDataResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateData(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePaging(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUserPersonalDataResponse) validateData(formats strfmt.Registry) error {

	if err := validate.Required("Data", "body", m.Data); err != nil {
		return err
	}

	for i := 0; i < len(m.Data); i++ {
		if swag.IsZero(m.Data[i]) { // not required
			continue
		}

		if m.Data[i] != nil {
			if err := m.Data[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("Data" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsUserPersonalDataResponse) validatePaging(formats strfmt.Registry) error {

	if err := validate.Required("Paging", "body", m.Paging); err != nil {
		return err
	}

	if m.Paging != nil {
		if err := m.Paging.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("Paging")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserPersonalDataResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserPersonalDataResponse) UnmarshalBinary(b []byte) error {
	var res ModelsUserPersonalDataResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
