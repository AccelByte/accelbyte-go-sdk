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

// AccountcommonBanReasonsV3 Accountcommon ban reasons V3
//
// swagger:model Accountcommon ban reasons V3.
type AccountcommonBanReasonsV3 struct {

	// reasons
	// Required: true
	Reasons []*AccountcommonBanReasonV3 `json:"reasons"`
}

// Validate validates this Accountcommon ban reasons V3
func (m *AccountcommonBanReasonsV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateReasons(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonBanReasonsV3) validateReasons(formats strfmt.Registry) error {

	if err := validate.Required("reasons", "body", m.Reasons); err != nil {
		return err
	}

	for i := 0; i < len(m.Reasons); i++ {
		if swag.IsZero(m.Reasons[i]) { // not required
			continue
		}

		if m.Reasons[i] != nil {
			if err := m.Reasons[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("reasons" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonBanReasonsV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonBanReasonsV3) UnmarshalBinary(b []byte) error {
	var res AccountcommonBanReasonsV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
