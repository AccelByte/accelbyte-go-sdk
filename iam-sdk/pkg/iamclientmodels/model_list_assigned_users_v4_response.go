// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelListAssignedUsersV4Response Model list assigned users V4 response
//
// swagger:model Model list assigned users V4 response.
type ModelListAssignedUsersV4Response struct {

	// data
	// Required: true
	Data []*ModelAssignedUserV4Response `json:"data"`

	// paging
	// Required: true
	Paging *AccountcommonPaginationV3 `json:"paging"`
}

// Validate validates this Model list assigned users V4 response
func (m *ModelListAssignedUsersV4Response) Validate(formats strfmt.Registry) error {
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

func (m *ModelListAssignedUsersV4Response) validateData(formats strfmt.Registry) error {

	if err := validate.Required("data", "body", m.Data); err != nil {
		return err
	}

	for i := 0; i < len(m.Data); i++ {
		if swag.IsZero(m.Data[i]) { // not required
			continue
		}

		if m.Data[i] != nil {
			if err := m.Data[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("data" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelListAssignedUsersV4Response) validatePaging(formats strfmt.Registry) error {

	if err := validate.Required("paging", "body", m.Paging); err != nil {
		return err
	}

	if m.Paging != nil {
		if err := m.Paging.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("paging")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelListAssignedUsersV4Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelListAssignedUsersV4Response) UnmarshalBinary(b []byte) error {
	var res ModelListAssignedUsersV4Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
