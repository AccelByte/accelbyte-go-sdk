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

// ModelsArchiveLeaderboardSignedURLResponse Models archive leaderboard signed URL response
//
// swagger:model Models archive leaderboard signed URL response.
type ModelsArchiveLeaderboardSignedURLResponse struct {

	// leaderboardcode
	// Required: true
	LeaderboardCode *string `json:"leaderboardCode"`

	// url
	// Required: true
	URL *string `json:"url"`
}

// Validate validates this Models archive leaderboard signed URL response
func (m *ModelsArchiveLeaderboardSignedURLResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLeaderboardCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateURL(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsArchiveLeaderboardSignedURLResponse) validateLeaderboardCode(formats strfmt.Registry) error {

	if err := validate.Required("leaderboardCode", "body", m.LeaderboardCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsArchiveLeaderboardSignedURLResponse) validateURL(formats strfmt.Registry) error {

	if err := validate.Required("url", "body", m.URL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsArchiveLeaderboardSignedURLResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsArchiveLeaderboardSignedURLResponse) UnmarshalBinary(b []byte) error {
	var res ModelsArchiveLeaderboardSignedURLResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
