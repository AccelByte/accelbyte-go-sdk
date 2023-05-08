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

// ModelsUserCycleRankingResponseDetail Models user cycle ranking response detail
//
// swagger:model Models user cycle ranking response detail.
type ModelsUserCycleRankingResponseDetail struct {

	// additionaldata
	AdditionalData interface{} `json:"additionalData,omitempty"`

	// cycleid
	// Required: true
	CycleID *string `json:"cycleId"`

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

// Validate validates this Models user cycle ranking response detail
func (m *ModelsUserCycleRankingResponseDetail) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCycleID(formats); err != nil {
		res = append(res, err)
	}
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

func (m *ModelsUserCycleRankingResponseDetail) validateCycleID(formats strfmt.Registry) error {

	if err := validate.Required("cycleId", "body", m.CycleID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserCycleRankingResponseDetail) validatePoint(formats strfmt.Registry) error {

	if err := validate.Required("point", "body", m.Point); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserCycleRankingResponseDetail) validateRank(formats strfmt.Registry) error {

	if err := validate.Required("rank", "body", m.Rank); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserCycleRankingResponseDetail) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserCycleRankingResponseDetail) UnmarshalBinary(b []byte) error {
	var res ModelsUserCycleRankingResponseDetail
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
