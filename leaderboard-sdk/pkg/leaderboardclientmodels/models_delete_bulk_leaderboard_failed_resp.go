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

// ModelsDeleteBulkLeaderboardFailedResp Models delete bulk leaderboard failed resp
//
// swagger:model Models delete bulk leaderboard failed resp.
type ModelsDeleteBulkLeaderboardFailedResp struct {

	// error
	// Required: true
	Error *string `json:"error"`

	// leaderboardcode
	// Required: true
	LeaderboardCode *string `json:"leaderboardCode"`
}

// Validate validates this Models delete bulk leaderboard failed resp
func (m *ModelsDeleteBulkLeaderboardFailedResp) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateError(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLeaderboardCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDeleteBulkLeaderboardFailedResp) validateError(formats strfmt.Registry) error {

	if err := validate.Required("error", "body", m.Error); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDeleteBulkLeaderboardFailedResp) validateLeaderboardCode(formats strfmt.Registry) error {

	if err := validate.Required("leaderboardCode", "body", m.LeaderboardCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDeleteBulkLeaderboardFailedResp) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDeleteBulkLeaderboardFailedResp) UnmarshalBinary(b []byte) error {
	var res ModelsDeleteBulkLeaderboardFailedResp
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
