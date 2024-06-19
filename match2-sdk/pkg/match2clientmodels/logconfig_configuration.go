// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// LogconfigConfiguration Logconfig configuration
//
// swagger:model Logconfig configuration.
type LogconfigConfiguration struct {

	// loglevel
	// Enum: ['debug', 'error', 'fatal', 'info', 'panic', 'trace', 'warning']
	LogLevel string `json:"logLevel,omitempty"`
}

// Validate validates this Logconfig configuration
func (m *LogconfigConfiguration) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var logconfigConfigurationTypeLogLevelPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DEBUG", "ERROR", "FATAL", "INFO", "PANIC", "TRACE", "WARNING"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		logconfigConfigurationTypeLogLevelPropEnum = append(logconfigConfigurationTypeLogLevelPropEnum, v)
	}
}

const (

	// LogconfigConfigurationLogLevelDEBUG captures enum value "DEBUG"
	LogconfigConfigurationLogLevelDEBUG string = "DEBUG"

	// LogconfigConfigurationLogLevelERROR captures enum value "ERROR"
	LogconfigConfigurationLogLevelERROR string = "ERROR"

	// LogconfigConfigurationLogLevelFATAL captures enum value "FATAL"
	LogconfigConfigurationLogLevelFATAL string = "FATAL"

	// LogconfigConfigurationLogLevelINFO captures enum value "INFO"
	LogconfigConfigurationLogLevelINFO string = "INFO"

	// LogconfigConfigurationLogLevelPANIC captures enum value "PANIC"
	LogconfigConfigurationLogLevelPANIC string = "PANIC"

	// LogconfigConfigurationLogLevelTRACE captures enum value "TRACE"
	LogconfigConfigurationLogLevelTRACE string = "TRACE"

	// LogconfigConfigurationLogLevelWARNING captures enum value "WARNING"
	LogconfigConfigurationLogLevelWARNING string = "WARNING"
)

// prop value enum
func (m *LogconfigConfiguration) validateLogLevelEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, logconfigConfigurationTypeLogLevelPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *LogconfigConfiguration) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *LogconfigConfiguration) UnmarshalBinary(b []byte) error {
	var res LogconfigConfiguration
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
