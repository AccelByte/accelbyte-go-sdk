// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// HandlersGetUsersPresenceResponse Handlers get users presence response
//
// swagger:model Handlers get users presence response.
type HandlersGetUsersPresenceResponse struct {

	// away
	// Required: true
	// Format: int32
	Away *int32 `json:"away"`

	// busy
	// Required: true
	// Format: int32
	Busy *int32 `json:"busy"`

	// data
	// Required: true
	Data []*HandlersUserPresence `json:"data"`

	// invisible
	// Required: true
	// Format: int32
	Invisible *int32 `json:"invisible"`

	// offline
	// Required: true
	// Format: int32
	Offline *int32 `json:"offline"`

	// online
	// Required: true
	// Format: int32
	Online *int32 `json:"online"`
}

// Validate validates this Handlers get users presence response
func (m *HandlersGetUsersPresenceResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAway(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBusy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateData(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInvisible(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOffline(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOnline(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *HandlersGetUsersPresenceResponse) validateAway(formats strfmt.Registry) error {

	if err := validate.Required("away", "body", m.Away); err != nil {
		return err
	}

	return nil
}

func (m *HandlersGetUsersPresenceResponse) validateBusy(formats strfmt.Registry) error {

	if err := validate.Required("busy", "body", m.Busy); err != nil {
		return err
	}

	return nil
}

func (m *HandlersGetUsersPresenceResponse) validateData(formats strfmt.Registry) error {

	if err := validate.Required("data", "body", m.Data); err != nil {
		return err
	}

	for i := 0; i < len(m.Data); i++ {
		if swag.IsZero(m.Data[i]) { // not required
			continue
		}

		if m.Data[i] != nil {
			if err := m.Data[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("data" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *HandlersGetUsersPresenceResponse) validateInvisible(formats strfmt.Registry) error {

	if err := validate.Required("invisible", "body", m.Invisible); err != nil {
		return err
	}

	return nil
}

func (m *HandlersGetUsersPresenceResponse) validateOffline(formats strfmt.Registry) error {

	if err := validate.Required("offline", "body", m.Offline); err != nil {
		return err
	}

	return nil
}

func (m *HandlersGetUsersPresenceResponse) validateOnline(formats strfmt.Registry) error {

	if err := validate.Required("online", "body", m.Online); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *HandlersGetUsersPresenceResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *HandlersGetUsersPresenceResponse) UnmarshalBinary(b []byte) error {
	var res HandlersGetUsersPresenceResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
