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

// APIMatchTicketRequest Api match ticket request
//
// swagger:model Api match ticket request.
type APIMatchTicketRequest struct {

	// attributes
	// Required: true
	Attributes interface{} `json:"attributes"`

	// latencies
	// Required: true
	Latencies map[string]int64 `json:"latencies"`

	// matchpool
	// Required: true
	MatchPool *string `json:"matchPool"`

	// sessionid
	// Required: true
	SessionID *string `json:"sessionID"`
}

// Validate validates this Api match ticket request
func (m *APIMatchTicketRequest) Validate(formats strfmt.Registry) error {
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

func (m *APIMatchTicketRequest) validateMatchPool(formats strfmt.Registry) error {

	if err := validate.Required("matchPool", "body", m.MatchPool); err != nil {
		return err
	}

	return nil
}

func (m *APIMatchTicketRequest) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("sessionID", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIMatchTicketRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIMatchTicketRequest) UnmarshalBinary(b []byte) error {
	var res APIMatchTicketRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
