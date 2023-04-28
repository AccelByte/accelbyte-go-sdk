// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reportingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiCreateReasonRequest Restapi create reason request
//
// swagger:model Restapi create reason request.
type RestapiCreateReasonRequest struct {

	// max 280 chars
	// Required: true
	Description *string `json:"description"`

	// groupids
	// Required: true
	GroupIds []string `json:"groupIds"`

	// max 256 chars
	// Required: true
	Title *string `json:"title"`
}

// Validate validates this Restapi create reason request
func (m *RestapiCreateReasonRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGroupIds(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTitle(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestapiCreateReasonRequest) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *RestapiCreateReasonRequest) validateGroupIds(formats strfmt.Registry) error {

	if err := validate.Required("groupIds", "body", m.GroupIds); err != nil {
		return err
	}

	return nil
}

func (m *RestapiCreateReasonRequest) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiCreateReasonRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiCreateReasonRequest) UnmarshalBinary(b []byte) error {
	var res RestapiCreateReasonRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
