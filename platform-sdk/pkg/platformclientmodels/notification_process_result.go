// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// NotificationProcessResult Notification process result
//
// swagger:model Notification process result.
type NotificationProcessResult struct {

	// code
	Code string `json:"code,omitempty"`

	// customparam
	CustomParam interface{} `json:"customParam,omitempty"`

	// severity
	// Format: int32
	Severity int32 `json:"severity,omitempty"`

	// status
	// Enum: ['ERROR', 'IGNORED', 'PROCESSED', 'WARN']
	Status string `json:"status,omitempty"`
}

// Validate validates this Notification process result
func (m *NotificationProcessResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var notificationProcessResultTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ERROR", "IGNORED", "PROCESSED", "WARN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		notificationProcessResultTypeStatusPropEnum = append(notificationProcessResultTypeStatusPropEnum, v)
	}
}

const (

	// NotificationProcessResultStatusERROR captures enum value "ERROR"
	NotificationProcessResultStatusERROR string = "ERROR"

	// NotificationProcessResultStatusIGNORED captures enum value "IGNORED"
	NotificationProcessResultStatusIGNORED string = "IGNORED"

	// NotificationProcessResultStatusPROCESSED captures enum value "PROCESSED"
	NotificationProcessResultStatusPROCESSED string = "PROCESSED"

	// NotificationProcessResultStatusWARN captures enum value "WARN"
	NotificationProcessResultStatusWARN string = "WARN"
)

// prop value enum
func (m *NotificationProcessResult) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, notificationProcessResultTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *NotificationProcessResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *NotificationProcessResult) UnmarshalBinary(b []byte) error {
	var res NotificationProcessResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
