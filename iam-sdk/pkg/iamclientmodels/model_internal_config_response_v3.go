// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelInternalConfigResponseV3 Model internal config response V3
//
// swagger:model Model internal config response V3.
type ModelInternalConfigResponseV3 struct {

	// The user search feature will return an empty result if the query value length exceeds the maximum allowed length.
	// Required: true
	// Format: int32
	SearchQueryMaxLength *int32 `json:"searchQueryMaxLength"`

	// The user search feature will return an empty result if the email type query value length exceeds the maximum allowed length.
	// Required: true
	// Format: int32
	SearchQueryMaxLengthForEmail *int32 `json:"searchQueryMaxLengthForEmail"`

	// The user search feature will return an empty result if the query value length is less than the minimum allowed length.
	// Required: true
	// Format: int32
	SearchQueryMinLength *int32 `json:"searchQueryMinLength"`
}

// Validate validates this Model internal config response V3
func (m *ModelInternalConfigResponseV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSearchQueryMaxLength(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSearchQueryMaxLengthForEmail(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSearchQueryMinLength(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelInternalConfigResponseV3) validateSearchQueryMaxLength(formats strfmt.Registry) error {

	if err := validate.Required("searchQueryMaxLength", "body", m.SearchQueryMaxLength); err != nil {
		return err
	}

	return nil
}

func (m *ModelInternalConfigResponseV3) validateSearchQueryMaxLengthForEmail(formats strfmt.Registry) error {

	if err := validate.Required("searchQueryMaxLengthForEmail", "body", m.SearchQueryMaxLengthForEmail); err != nil {
		return err
	}

	return nil
}

func (m *ModelInternalConfigResponseV3) validateSearchQueryMinLength(formats strfmt.Registry) error {

	if err := validate.Required("searchQueryMinLength", "body", m.SearchQueryMinLength); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelInternalConfigResponseV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelInternalConfigResponseV3) UnmarshalBinary(b []byte) error {
	var res ModelInternalConfigResponseV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
