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

// ModelListBulkUserBanResponseV3 Model list bulk user ban response V3
//
// swagger:model Model list bulk user ban response V3.
type ModelListBulkUserBanResponseV3 struct {

	// failedbans
	// Required: true
	FailedBans []*ModelFailedBanUnbanUserV3 `json:"failedBans"`

	// successbans
	// Required: true
	SuccessBans []*ModelUserBanResponseV3 `json:"successBans"`
}

// Validate validates this Model list bulk user ban response V3
func (m *ModelListBulkUserBanResponseV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFailedBans(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSuccessBans(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelListBulkUserBanResponseV3) validateFailedBans(formats strfmt.Registry) error {

	if err := validate.Required("failedBans", "body", m.FailedBans); err != nil {
		return err
	}

	for i := 0; i < len(m.FailedBans); i++ {
		if swag.IsZero(m.FailedBans[i]) { // not required
			continue
		}

		if m.FailedBans[i] != nil {
			if err := m.FailedBans[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("failedBans" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelListBulkUserBanResponseV3) validateSuccessBans(formats strfmt.Registry) error {

	if err := validate.Required("successBans", "body", m.SuccessBans); err != nil {
		return err
	}

	for i := 0; i < len(m.SuccessBans); i++ {
		if swag.IsZero(m.SuccessBans[i]) { // not required
			continue
		}

		if m.SuccessBans[i] != nil {
			if err := m.SuccessBans[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("successBans" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelListBulkUserBanResponseV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelListBulkUserBanResponseV3) UnmarshalBinary(b []byte) error {
	var res ModelListBulkUserBanResponseV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
