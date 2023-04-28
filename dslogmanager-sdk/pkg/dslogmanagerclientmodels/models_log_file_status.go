// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dslogmanagerclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsLogFileStatus Models log file status
//
// swagger:model Models log file status.
type ModelsLogFileStatus struct {

	// log_existence
	// Required: true
	LogExistence *bool `json:"log_existence"`
}

// Validate validates this Models log file status
func (m *ModelsLogFileStatus) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLogExistence(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsLogFileStatus) validateLogExistence(formats strfmt.Registry) error {

	if err := validate.Required("log_existence", "body", m.LogExistence); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsLogFileStatus) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsLogFileStatus) UnmarshalBinary(b []byte) error {
	var res ModelsLogFileStatus
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
