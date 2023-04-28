// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ListUserSeasonInfoPagingSlicedResult List user season info paging sliced result
//
// swagger:model List user season info paging sliced result.
type ListUserSeasonInfoPagingSlicedResult struct {

	// data
	// Required: true
	Data []*ListUserSeasonInfo `json:"data"`

	// paging
	Paging *Paging `json:"paging,omitempty"`

	// total
	// Format: int64
	Total int64 `json:"total,omitempty"`
}

// Validate validates this List user season info paging sliced result
func (m *ListUserSeasonInfoPagingSlicedResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateData(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ListUserSeasonInfoPagingSlicedResult) validateData(formats strfmt.Registry) error {

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

// MarshalBinary interface implementation
func (m *ListUserSeasonInfoPagingSlicedResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ListUserSeasonInfoPagingSlicedResult) UnmarshalBinary(b []byte) error {
	var res ListUserSeasonInfoPagingSlicedResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
