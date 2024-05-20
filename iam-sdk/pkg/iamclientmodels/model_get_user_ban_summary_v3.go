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

// ModelGetUserBanSummaryV3 Model get user ban summary V3
//
// swagger:model Model get user ban summary V3.
type ModelGetUserBanSummaryV3 struct {

	// activecount
	// Required: true
	// Format: int32
	ActiveCount *int32 `json:"activeCount"`

	// data
	// Required: true
	Data []*ModelUserBanWithStatus `json:"data"`

	// inactivecount
	// Required: true
	// Format: int32
	InactiveCount *int32 `json:"inactiveCount"`

	// totalcount
	// Required: true
	// Format: int32
	TotalCount *int32 `json:"totalCount"`
}

// Validate validates this Model get user ban summary V3
func (m *ModelGetUserBanSummaryV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActiveCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateData(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInactiveCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelGetUserBanSummaryV3) validateActiveCount(formats strfmt.Registry) error {

	if err := validate.Required("activeCount", "body", m.ActiveCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelGetUserBanSummaryV3) validateData(formats strfmt.Registry) error {

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

func (m *ModelGetUserBanSummaryV3) validateInactiveCount(formats strfmt.Registry) error {

	if err := validate.Required("inactiveCount", "body", m.InactiveCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelGetUserBanSummaryV3) validateTotalCount(formats strfmt.Registry) error {

	if err := validate.Required("totalCount", "body", m.TotalCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelGetUserBanSummaryV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelGetUserBanSummaryV3) UnmarshalBinary(b []byte) error {
	var res ModelGetUserBanSummaryV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
