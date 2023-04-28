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

// RestapiCreateReasonGroupRequest Restapi create reason group request
//
// swagger:model Restapi create reason group request.
type RestapiCreateReasonGroupRequest struct {

	// reasonids
	ReasonIds []string `json:"reasonIds,omitempty"`

	// max 256 chars
	// Required: true
	Title *string `json:"title"`
}

// Validate validates this Restapi create reason group request
func (m *RestapiCreateReasonGroupRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTitle(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestapiCreateReasonGroupRequest) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiCreateReasonGroupRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiCreateReasonGroupRequest) UnmarshalBinary(b []byte) error {
	var res RestapiCreateReasonGroupRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
