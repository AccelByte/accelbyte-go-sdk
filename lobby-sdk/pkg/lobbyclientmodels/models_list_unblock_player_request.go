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

// ModelsListUnblockPlayerRequest Models list unblock player request
//
// swagger:model Models list unblock player request.
type ModelsListUnblockPlayerRequest struct {

	// listunblockuserid
	// Required: true
	ListUnblockUserID []string `json:"listUnblockUserId"`
}

// Validate validates this Models list unblock player request
func (m *ModelsListUnblockPlayerRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateListUnblockUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsListUnblockPlayerRequest) validateListUnblockUserID(formats strfmt.Registry) error {

	if err := validate.Required("listUnblockUserId", "body", m.ListUnblockUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsListUnblockPlayerRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsListUnblockPlayerRequest) UnmarshalBinary(b []byte) error {
	var res ModelsListUnblockPlayerRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
