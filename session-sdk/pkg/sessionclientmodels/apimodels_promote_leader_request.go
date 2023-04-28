// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsPromoteLeaderRequest Apimodels promote leader request
//
// swagger:model Apimodels promote leader request.
type ApimodelsPromoteLeaderRequest struct {

	// leaderid
	// Required: true
	LeaderID *string `json:"leaderID"`
}

// Validate validates this Apimodels promote leader request
func (m *ApimodelsPromoteLeaderRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLeaderID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsPromoteLeaderRequest) validateLeaderID(formats strfmt.Registry) error {

	if err := validate.Required("leaderID", "body", m.LeaderID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsPromoteLeaderRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsPromoteLeaderRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsPromoteLeaderRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
