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

// GeneratedGetAppListV1Request Generated get app list V1 request
//
// swagger:model Generated get app list V1 request.
type GeneratedGetAppListV1Request struct {

	// appnames
	// Required: true
	AppNames []string `json:"appNames"`

	// fuzzyappname
	FuzzyAppName string `json:"fuzzyAppName,omitempty"`

	// scenario
	Scenario string `json:"scenario,omitempty"`

	// statuses
	// Required: true
	Statuses []string `json:"statuses"`
}

// Validate validates this Generated get app list V1 request
func (m *GeneratedGetAppListV1Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppNames(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatuses(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *GeneratedGetAppListV1Request) validateAppNames(formats strfmt.Registry) error {

	if err := validate.Required("appNames", "body", m.AppNames); err != nil {
		return err
	}

	return nil
}

func (m *GeneratedGetAppListV1Request) validateStatuses(formats strfmt.Registry) error {

	if err := validate.Required("statuses", "body", m.Statuses); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedGetAppListV1Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedGetAppListV1Request) UnmarshalBinary(b []byte) error {
	var res GeneratedGetAppListV1Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
