// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelGetBulkUserBansRequest Model get bulk user bans request
//
// swagger:model Model get bulk user bans request.
type ModelGetBulkUserBansRequest struct {

	// bulkuserid
	// Required: true
	BulkUserID []string `json:"bulkUserId"`
}

// Validate validates this Model get bulk user bans request
func (m *ModelGetBulkUserBansRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBulkUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelGetBulkUserBansRequest) validateBulkUserID(formats strfmt.Registry) error {

	if err := validate.Required("bulkUserId", "body", m.BulkUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelGetBulkUserBansRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelGetBulkUserBansRequest) UnmarshalBinary(b []byte) error {
	var res ModelGetBulkUserBansRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
