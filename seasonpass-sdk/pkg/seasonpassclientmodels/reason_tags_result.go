// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ReasonTagsResult Reason tags result
//
// swagger:model Reason tags result.
type ReasonTagsResult struct {

	// tags
	// Required: true
	Tags []string `json:"tags"`
}

// Validate validates this Reason tags result
func (m *ReasonTagsResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTags(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ReasonTagsResult) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ReasonTagsResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ReasonTagsResult) UnmarshalBinary(b []byte) error {
	var res ReasonTagsResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
