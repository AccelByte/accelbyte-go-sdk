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

// ModelsServerLogs Models server logs
//
// swagger:model Models server logs.
type ModelsServerLogs struct {

	// std_err_logs
	// Required: true
	StdErrLogs *string `json:"std_err_logs"`

	// std_out_logs
	// Required: true
	StdOutLogs *string `json:"std_out_logs"`
}

// Validate validates this Models server logs
func (m *ModelsServerLogs) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStdErrLogs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStdOutLogs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsServerLogs) validateStdErrLogs(formats strfmt.Registry) error {

	if err := validate.Required("std_err_logs", "body", m.StdErrLogs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsServerLogs) validateStdOutLogs(formats strfmt.Registry) error {

	if err := validate.Required("std_out_logs", "body", m.StdOutLogs); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsServerLogs) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsServerLogs) UnmarshalBinary(b []byte) error {
	var res ModelsServerLogs
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
