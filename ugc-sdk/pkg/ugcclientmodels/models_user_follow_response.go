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

// ModelsUserFollowResponse Models user follow response
//
// swagger:model Models user follow response.
type ModelsUserFollowResponse struct {

	// followstatus
	// Required: true
	FollowStatus *bool `json:"followStatus"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models user follow response
func (m *ModelsUserFollowResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFollowStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUserFollowResponse) validateFollowStatus(formats strfmt.Registry) error {

	if err := validate.Required("followStatus", "body", m.FollowStatus); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserFollowResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserFollowResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserFollowResponse) UnmarshalBinary(b []byte) error {
	var res ModelsUserFollowResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
