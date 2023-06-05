// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGetBulkAllPlayerBlockedUsersResponse Models get bulk all player blocked users response
//
// swagger:model Models get bulk all player blocked users response.
type ModelsGetBulkAllPlayerBlockedUsersResponse struct {

	// data
	// Required: true
	Data map[string][]ModelsBlockedPlayerData `json:"data"`
}

// Validate validates this Models get bulk all player blocked users response
func (m *ModelsGetBulkAllPlayerBlockedUsersResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateData(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGetBulkAllPlayerBlockedUsersResponse) validateData(formats strfmt.Registry) error {

	if err := validate.Required("data", "body", m.Data); err != nil {
		return err
	}

	for k := range m.Data {

		if err := validate.Required("data"+"."+k, "body", m.Data[k]); err != nil {
			return err
		}
		for i := 0; i < len(m.Data[k]); i++ {

			if err := m.Data[k][i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("data" + "." + k + "." + strconv.Itoa(i))
				}
				return err
			}

		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetBulkAllPlayerBlockedUsersResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetBulkAllPlayerBlockedUsersResponse) UnmarshalBinary(b []byte) error {
	var res ModelsGetBulkAllPlayerBlockedUsersResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
