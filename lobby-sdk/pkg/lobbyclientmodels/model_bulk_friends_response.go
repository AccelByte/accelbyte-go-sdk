// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelBulkFriendsResponse Model bulk friends response
//
// swagger:model Model bulk friends response.
type ModelBulkFriendsResponse struct {

	// rowsaffected
	// Required: true
	// Format: int32
	RowsAffected *int32 `json:"rowsAffected"`
}

// Validate validates this Model bulk friends response
func (m *ModelBulkFriendsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRowsAffected(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelBulkFriendsResponse) validateRowsAffected(formats strfmt.Registry) error {

	if err := validate.Required("rowsAffected", "body", m.RowsAffected); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelBulkFriendsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelBulkFriendsResponse) UnmarshalBinary(b []byte) error {
	var res ModelBulkFriendsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
