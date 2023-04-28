// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsListSessionResponse Models list session response
//
// swagger:model Models list session response.
type ModelsListSessionResponse struct {

	// paging
	// Required: true
	Paging *ModelsPagingCursor `json:"paging"`

	// sessions
	// Required: true
	Sessions []*ModelsSession `json:"sessions"`
}

// Validate validates this Models list session response
func (m *ModelsListSessionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePaging(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessions(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsListSessionResponse) validatePaging(formats strfmt.Registry) error {

	if err := validate.Required("paging", "body", m.Paging); err != nil {
		return err
	}

	if m.Paging != nil {
		if err := m.Paging.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("paging")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsListSessionResponse) validateSessions(formats strfmt.Registry) error {

	if err := validate.Required("sessions", "body", m.Sessions); err != nil {
		return err
	}

	for i := 0; i < len(m.Sessions); i++ {
		if swag.IsZero(m.Sessions[i]) { // not required
			continue
		}

		if m.Sessions[i] != nil {
			if err := m.Sessions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("sessions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsListSessionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsListSessionResponse) UnmarshalBinary(b []byte) error {
	var res ModelsListSessionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
