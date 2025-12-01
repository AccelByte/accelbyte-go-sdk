// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelAppRedeploymentDetail Model app redeployment detail
//
// swagger:model Model app redeployment detail.
type ModelAppRedeploymentDetail struct {

	// message
	Message string `json:"message,omitempty"`

	// reasonid
	// Required: true
	ReasonID *string `json:"reasonId"`
}

// Validate validates this Model app redeployment detail
func (m *ModelAppRedeploymentDetail) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateReasonID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelAppRedeploymentDetail) validateReasonID(formats strfmt.Registry) error {

	if err := validate.Required("reasonId", "body", m.ReasonID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelAppRedeploymentDetail) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelAppRedeploymentDetail) UnmarshalBinary(b []byte) error {
	var res ModelAppRedeploymentDetail
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
