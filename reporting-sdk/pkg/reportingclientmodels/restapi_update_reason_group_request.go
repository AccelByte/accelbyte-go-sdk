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

// RestapiUpdateReasonGroupRequest Restapi update reason group request
//
// swagger:model Restapi update reason group request.
type RestapiUpdateReasonGroupRequest struct {

	// reasonids
	ReasonIds []string `json:"reasonIds,omitempty"`

	// max 256 chars
	// Required: true
	Title *string `json:"title"`
}

// Validate validates this Restapi update reason group request
func (m *RestapiUpdateReasonGroupRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTitle(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestapiUpdateReasonGroupRequest) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiUpdateReasonGroupRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiUpdateReasonGroupRequest) UnmarshalBinary(b []byte) error {
	var res RestapiUpdateReasonGroupRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
