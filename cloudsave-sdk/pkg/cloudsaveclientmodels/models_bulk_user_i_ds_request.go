// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsBulkUserIDsRequest Models bulk user I ds request
//
// swagger:model Models bulk user I ds request.
type ModelsBulkUserIDsRequest struct {

	// userids
	// Required: true
	UserIds []string `json:"userIds"`
}

// Validate validates this Models bulk user I ds request
func (m *ModelsBulkUserIDsRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBulkUserIDsRequest) validateUserIds(formats strfmt.Registry) error {

	if err := validate.Required("userIds", "body", m.UserIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBulkUserIDsRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBulkUserIDsRequest) UnmarshalBinary(b []byte) error {
	var res ModelsBulkUserIDsRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
