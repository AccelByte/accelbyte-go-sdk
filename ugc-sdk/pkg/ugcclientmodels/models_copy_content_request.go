// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCopyContentRequest Models copy content request
//
// swagger:model Models copy content request.
type ModelsCopyContentRequest struct {

	// customattributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// name
	Name string `json:"name,omitempty"`

	// subtype
	SubType string `json:"subType,omitempty"`

	// tags
	Tags []string `json:"tags,omitempty"`

	// targetchannelid
	// Required: true
	TargetChannelID *string `json:"targetChannelId"`

	// type
	Type string `json:"type,omitempty"`
}

// Validate validates this Models copy content request
func (m *ModelsCopyContentRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTargetChannelID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCopyContentRequest) validateTargetChannelID(formats strfmt.Registry) error {

	if err := validate.Required("targetChannelId", "body", m.TargetChannelID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCopyContentRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCopyContentRequest) UnmarshalBinary(b []byte) error {
	var res ModelsCopyContentRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
