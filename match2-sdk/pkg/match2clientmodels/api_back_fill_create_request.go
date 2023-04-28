// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIBackFillCreateRequest Api back fill create request
//
// swagger:model Api back fill create request.
type APIBackFillCreateRequest struct {

	// matchpool
	// Required: true
	MatchPool *string `json:"matchPool"`

	// sessionid
	// Required: true
	SessionID *string `json:"sessionId"`
}

// Validate validates this Api back fill create request
func (m *APIBackFillCreateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMatchPool(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIBackFillCreateRequest) validateMatchPool(formats strfmt.Registry) error {

	if err := validate.Required("matchPool", "body", m.MatchPool); err != nil {
		return err
	}

	return nil
}

func (m *APIBackFillCreateRequest) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("sessionId", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIBackFillCreateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIBackFillCreateRequest) UnmarshalBinary(b []byte) error {
	var res APIBackFillCreateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
