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

// ModelsArchiveLeaderboardReq Models archive leaderboard req
//
// swagger:model Models archive leaderboard req.
type ModelsArchiveLeaderboardReq struct {

	// leaderboardcodes
	// Required: true
	LeaderboardCodes []string `json:"leaderboardCodes"`

	// limit
	// Required: true
	// Format: int64
	Limit *int64 `json:"limit"`

	// slug
	// Required: true
	Slug *string `json:"slug"`
}

// Validate validates this Models archive leaderboard req
func (m *ModelsArchiveLeaderboardReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLeaderboardCodes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSlug(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsArchiveLeaderboardReq) validateLeaderboardCodes(formats strfmt.Registry) error {

	if err := validate.Required("leaderboardCodes", "body", m.LeaderboardCodes); err != nil {
		return err
	}

	return nil
}

func (m *ModelsArchiveLeaderboardReq) validateLimit(formats strfmt.Registry) error {

	if err := validate.Required("limit", "body", m.Limit); err != nil {
		return err
	}

	return nil
}

func (m *ModelsArchiveLeaderboardReq) validateSlug(formats strfmt.Registry) error {

	if err := validate.Required("slug", "body", m.Slug); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsArchiveLeaderboardReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsArchiveLeaderboardReq) UnmarshalBinary(b []byte) error {
	var res ModelsArchiveLeaderboardReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
