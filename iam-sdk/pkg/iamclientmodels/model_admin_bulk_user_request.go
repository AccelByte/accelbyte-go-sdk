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

// ModelAdminBulkUserRequest Model admin bulk user request
//
// swagger:model Model admin bulk user request.
type ModelAdminBulkUserRequest struct {

	// findbypublishernamespace
	FindByPublisherNamespace bool `json:"findByPublisherNamespace"`

	// userids
	// Required: true
	UserIds []string `json:"userIds"`
}

// Validate validates this Model admin bulk user request
func (m *ModelAdminBulkUserRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelAdminBulkUserRequest) validateUserIds(formats strfmt.Registry) error {

	if err := validate.Required("userIds", "body", m.UserIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelAdminBulkUserRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelAdminBulkUserRequest) UnmarshalBinary(b []byte) error {
	var res ModelAdminBulkUserRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
