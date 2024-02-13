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

// ModelsBlockPlayerRequest Models block player request
//
// swagger:model Models block player request.
type ModelsBlockPlayerRequest struct {

	// blockeduserid
	// Required: true
	BlockedUserID *string `json:"blockedUserId"`
}

// Validate validates this Models block player request
func (m *ModelsBlockPlayerRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBlockedUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBlockPlayerRequest) validateBlockedUserID(formats strfmt.Registry) error {

	if err := validate.Required("blockedUserId", "body", m.BlockedUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBlockPlayerRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBlockPlayerRequest) UnmarshalBinary(b []byte) error {
	var res ModelsBlockPlayerRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
