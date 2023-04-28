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

// ModelsUserRankingResponseDetail Models user ranking response detail
//
// swagger:model Models user ranking response detail.
type ModelsUserRankingResponseDetail struct {

	// additionaldata
	// Required: true
	AdditionalData interface{} `json:"additionalData"`

	// hidden
	Hidden bool `json:"hidden"`

	// point
	// Required: true
	// Format: double
	Point *float64 `json:"point"`

	// rank
	// Required: true
	// Format: int64
	Rank *int64 `json:"rank"`
}

// Validate validates this Models user ranking response detail
func (m *ModelsUserRankingResponseDetail) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePoint(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRank(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUserRankingResponseDetail) validatePoint(formats strfmt.Registry) error {

	if err := validate.Required("point", "body", m.Point); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserRankingResponseDetail) validateRank(formats strfmt.Registry) error {

	if err := validate.Required("rank", "body", m.Rank); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserRankingResponseDetail) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserRankingResponseDetail) UnmarshalBinary(b []byte) error {
	var res ModelsUserRankingResponseDetail
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
