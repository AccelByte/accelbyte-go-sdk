// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUserFollowRequest Models user follow request
//
// swagger:model Models user follow request.
type ModelsUserFollowRequest struct {

	// followstatus
	// Required: true
	FollowStatus *bool `json:"followStatus"`
}

// Validate validates this Models user follow request
func (m *ModelsUserFollowRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFollowStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUserFollowRequest) validateFollowStatus(formats strfmt.Registry) error {

	if err := validate.Required("followStatus", "body", m.FollowStatus); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserFollowRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserFollowRequest) UnmarshalBinary(b []byte) error {
	var res ModelsUserFollowRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
