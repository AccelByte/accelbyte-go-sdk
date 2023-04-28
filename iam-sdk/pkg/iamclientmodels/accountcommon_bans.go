// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AccountcommonBans Accountcommon bans
//
// swagger:model Accountcommon bans.
type AccountcommonBans struct {

	// bans
	// Required: true
	Bans []*AccountcommonBan `json:"Bans"`
}

// Validate validates this Accountcommon bans
func (m *AccountcommonBans) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBans(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonBans) validateBans(formats strfmt.Registry) error {

	if err := validate.Required("Bans", "body", m.Bans); err != nil {
		return err
	}

	for i := 0; i < len(m.Bans); i++ {
		if swag.IsZero(m.Bans[i]) { // not required
			continue
		}

		if m.Bans[i] != nil {
			if err := m.Bans[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("Bans" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonBans) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonBans) UnmarshalBinary(b []byte) error {
	var res AccountcommonBans
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
