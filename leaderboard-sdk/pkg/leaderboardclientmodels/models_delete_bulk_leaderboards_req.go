// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboardclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsDeleteBulkLeaderboardsReq Models delete bulk leaderboards req
//
// swagger:model Models delete bulk leaderboards req.
type ModelsDeleteBulkLeaderboardsReq struct {

	// leaderboardcodes
	// Required: true
	LeaderboardCodes []string `json:"leaderboardCodes"`
}

// Validate validates this Models delete bulk leaderboards req
func (m *ModelsDeleteBulkLeaderboardsReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLeaderboardCodes(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDeleteBulkLeaderboardsReq) validateLeaderboardCodes(formats strfmt.Registry) error {

	if err := validate.Required("leaderboardCodes", "body", m.LeaderboardCodes); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDeleteBulkLeaderboardsReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDeleteBulkLeaderboardsReq) UnmarshalBinary(b []byte) error {
	var res ModelsDeleteBulkLeaderboardsReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
