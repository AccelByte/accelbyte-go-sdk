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

// ModelsDeleteBulkLeaderboardSuccessResp Models delete bulk leaderboard success resp
//
// swagger:model Models delete bulk leaderboard success resp.
type ModelsDeleteBulkLeaderboardSuccessResp struct {

	// leaderboardcode
	// Required: true
	LeaderboardCode *string `json:"leaderboardCode"`
}

// Validate validates this Models delete bulk leaderboard success resp
func (m *ModelsDeleteBulkLeaderboardSuccessResp) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLeaderboardCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDeleteBulkLeaderboardSuccessResp) validateLeaderboardCode(formats strfmt.Registry) error {

	if err := validate.Required("leaderboardCode", "body", m.LeaderboardCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDeleteBulkLeaderboardSuccessResp) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDeleteBulkLeaderboardSuccessResp) UnmarshalBinary(b []byte) error {
	var res ModelsDeleteBulkLeaderboardSuccessResp
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
