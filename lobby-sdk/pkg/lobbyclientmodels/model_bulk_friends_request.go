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

// ModelBulkFriendsRequest Model bulk friends request
//
// swagger:model Model bulk friends request.
type ModelBulkFriendsRequest struct {

	// friendids
	// Required: true
	FriendIds []string `json:"friendIds"`
}

// Validate validates this Model bulk friends request
func (m *ModelBulkFriendsRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFriendIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelBulkFriendsRequest) validateFriendIds(formats strfmt.Registry) error {

	if err := validate.Required("friendIds", "body", m.FriendIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelBulkFriendsRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelBulkFriendsRequest) UnmarshalBinary(b []byte) error {
	var res ModelBulkFriendsRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
