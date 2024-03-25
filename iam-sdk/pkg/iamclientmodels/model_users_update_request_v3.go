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

// ModelUsersUpdateRequestV3 Model users update request V3
//
// swagger:model Model users update request V3.
type ModelUsersUpdateRequestV3 struct {

	// updaterequest
	// Required: true
	UpdateRequest *ModelUserBulkUpdateRequestV3 `json:"updateRequest"`

	// userids
	// Required: true
	UserIds []string `json:"userIds"`
}

// Validate validates this Model users update request V3
func (m *ModelUsersUpdateRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUpdateRequest(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUsersUpdateRequestV3) validateUpdateRequest(formats strfmt.Registry) error {

	if err := validate.Required("updateRequest", "body", m.UpdateRequest); err != nil {
		return err
	}

	if m.UpdateRequest != nil {
		if err := m.UpdateRequest.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("updateRequest")
			}
			return err
		}
	}

	return nil
}

func (m *ModelUsersUpdateRequestV3) validateUserIds(formats strfmt.Registry) error {

	if err := validate.Required("userIds", "body", m.UserIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUsersUpdateRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUsersUpdateRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelUsersUpdateRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
