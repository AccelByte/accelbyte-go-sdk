// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGetMockMatchesResponse Models get mock matches response
//
// swagger:model Models get mock matches response.
type ModelsGetMockMatchesResponse struct {

	// count
	// Required: true
	// Format: int32
	Count *int32 `json:"count"`

	// largest_mmr_distance
	// Required: true
	// Format: int32
	LargestMmrDistance *int32 `json:"largest_mmr_distance"`

	// longest_time_to_match_seconds
	// Required: true
	// Format: int64
	LongestTimeToMatchSeconds *int64 `json:"longest_time_to_match_seconds"`

	// matches
	// Required: true
	Matches []*ModelsMockMatch `json:"matches"`
}

// Validate validates this Models get mock matches response
func (m *ModelsGetMockMatchesResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLargestMmrDistance(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLongestTimeToMatchSeconds(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatches(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGetMockMatchesResponse) validateCount(formats strfmt.Registry) error {

	if err := validate.Required("count", "body", m.Count); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetMockMatchesResponse) validateLargestMmrDistance(formats strfmt.Registry) error {

	if err := validate.Required("largest_mmr_distance", "body", m.LargestMmrDistance); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetMockMatchesResponse) validateLongestTimeToMatchSeconds(formats strfmt.Registry) error {

	if err := validate.Required("longest_time_to_match_seconds", "body", m.LongestTimeToMatchSeconds); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetMockMatchesResponse) validateMatches(formats strfmt.Registry) error {

	if err := validate.Required("matches", "body", m.Matches); err != nil {
		return err
	}

	for i := 0; i < len(m.Matches); i++ {
		if swag.IsZero(m.Matches[i]) { // not required
			continue
		}

		if m.Matches[i] != nil {
			if err := m.Matches[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("matches" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetMockMatchesResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetMockMatchesResponse) UnmarshalBinary(b []byte) error {
	var res ModelsGetMockMatchesResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
