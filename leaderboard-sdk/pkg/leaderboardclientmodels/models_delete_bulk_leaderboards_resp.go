// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboardclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsDeleteBulkLeaderboardsResp Models delete bulk leaderboards resp
//
// swagger:model Models delete bulk leaderboards resp.
type ModelsDeleteBulkLeaderboardsResp struct {

	// failed
	// Required: true
	Failed []*ModelsDeleteBulkLeaderboardFailedResp `json:"failed"`

	// success
	// Required: true
	Success []*ModelsDeleteBulkLeaderboardSuccessResp `json:"success"`
}

// Validate validates this Models delete bulk leaderboards resp
func (m *ModelsDeleteBulkLeaderboardsResp) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFailed(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSuccess(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDeleteBulkLeaderboardsResp) validateFailed(formats strfmt.Registry) error {

	if err := validate.Required("failed", "body", m.Failed); err != nil {
		return err
	}

	for i := 0; i < len(m.Failed); i++ {
		if swag.IsZero(m.Failed[i]) { // not required
			continue
		}

		if m.Failed[i] != nil {
			if err := m.Failed[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("failed" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsDeleteBulkLeaderboardsResp) validateSuccess(formats strfmt.Registry) error {

	if err := validate.Required("success", "body", m.Success); err != nil {
		return err
	}

	for i := 0; i < len(m.Success); i++ {
		if swag.IsZero(m.Success[i]) { // not required
			continue
		}

		if m.Success[i] != nil {
			if err := m.Success[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("success" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDeleteBulkLeaderboardsResp) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDeleteBulkLeaderboardsResp) UnmarshalBinary(b []byte) error {
	var res ModelsDeleteBulkLeaderboardsResp
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
