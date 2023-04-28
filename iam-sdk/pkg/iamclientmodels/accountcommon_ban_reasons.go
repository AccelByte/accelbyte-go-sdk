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

// AccountcommonBanReasons Accountcommon ban reasons
//
// swagger:model Accountcommon ban reasons.
type AccountcommonBanReasons struct {

	// reasons
	// Required: true
	Reasons []*AccountcommonBanReason `json:"Reasons"`
}

// Validate validates this Accountcommon ban reasons
func (m *AccountcommonBanReasons) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateReasons(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonBanReasons) validateReasons(formats strfmt.Registry) error {

	if err := validate.Required("Reasons", "body", m.Reasons); err != nil {
		return err
	}

	for i := 0; i < len(m.Reasons); i++ {
		if swag.IsZero(m.Reasons[i]) { // not required
			continue
		}

		if m.Reasons[i] != nil {
			if err := m.Reasons[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("Reasons" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonBanReasons) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonBanReasons) UnmarshalBinary(b []byte) error {
	var res AccountcommonBanReasons
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
