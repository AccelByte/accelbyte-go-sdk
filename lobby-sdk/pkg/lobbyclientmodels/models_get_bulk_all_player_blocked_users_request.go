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

// ModelsGetBulkAllPlayerBlockedUsersRequest Models get bulk all player blocked users request
//
// swagger:model Models get bulk all player blocked users request.
type ModelsGetBulkAllPlayerBlockedUsersRequest struct {

	// listblockeduserid
	// Required: true
	ListBlockedUserID []string `json:"listBlockedUserId"`
}

// Validate validates this Models get bulk all player blocked users request
func (m *ModelsGetBulkAllPlayerBlockedUsersRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateListBlockedUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGetBulkAllPlayerBlockedUsersRequest) validateListBlockedUserID(formats strfmt.Registry) error {

	if err := validate.Required("listBlockedUserId", "body", m.ListBlockedUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetBulkAllPlayerBlockedUsersRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetBulkAllPlayerBlockedUsersRequest) UnmarshalBinary(b []byte) error {
	var res ModelsGetBulkAllPlayerBlockedUsersRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
