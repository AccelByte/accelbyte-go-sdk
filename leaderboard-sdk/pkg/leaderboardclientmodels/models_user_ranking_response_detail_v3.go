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

// ModelsUserRankingResponseDetailV3 Models user ranking response detail V3
//
// swagger:model Models user ranking response detail V3.
type ModelsUserRankingResponseDetailV3 struct {

	// additionaldata
	AdditionalData interface{} `json:"additionalData,omitempty"`

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

// Validate validates this Models user ranking response detail V3
func (m *ModelsUserRankingResponseDetailV3) Validate(formats strfmt.Registry) error {
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

func (m *ModelsUserRankingResponseDetailV3) validatePoint(formats strfmt.Registry) error {

	if err := validate.Required("point", "body", m.Point); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserRankingResponseDetailV3) validateRank(formats strfmt.Registry) error {

	if err := validate.Required("rank", "body", m.Rank); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserRankingResponseDetailV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserRankingResponseDetailV3) UnmarshalBinary(b []byte) error {
	var res ModelsUserRankingResponseDetailV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
