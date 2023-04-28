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

// ModelsCreateGroupRequest Models create group request
//
// swagger:model Models create group request.
type ModelsCreateGroupRequest struct {

	// contents
	// Required: true
	Contents []string `json:"contents"`

	// name
	// Required: true
	Name *string `json:"name"`
}

// Validate validates this Models create group request
func (m *ModelsCreateGroupRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateContents(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCreateGroupRequest) validateContents(formats strfmt.Registry) error {

	if err := validate.Required("contents", "body", m.Contents); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateGroupRequest) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateGroupRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateGroupRequest) UnmarshalBinary(b []byte) error {
	var res ModelsCreateGroupRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
