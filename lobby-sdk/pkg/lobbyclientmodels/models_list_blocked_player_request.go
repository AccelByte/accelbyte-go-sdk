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

// ModelsListBlockedPlayerRequest Models list blocked player request
//
// swagger:model Models list blocked player request.
type ModelsListBlockedPlayerRequest struct {

	// listblockeduserid
	// Required: true
	ListBlockedUserID []string `json:"listBlockedUserId"`
}

// Validate validates this Models list blocked player request
func (m *ModelsListBlockedPlayerRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateListBlockedUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsListBlockedPlayerRequest) validateListBlockedUserID(formats strfmt.Registry) error {

	if err := validate.Required("listBlockedUserId", "body", m.ListBlockedUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsListBlockedPlayerRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsListBlockedPlayerRequest) UnmarshalBinary(b []byte) error {
	var res ModelsListBlockedPlayerRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
