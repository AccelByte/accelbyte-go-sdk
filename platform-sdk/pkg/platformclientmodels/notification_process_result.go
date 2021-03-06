// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// NotificationProcessResult notification process result
//
// swagger:model NotificationProcessResult
type NotificationProcessResult struct {

	// code
	Code string `json:"code,omitempty"`

	// custom param
	CustomParam interface{} `json:"customParam,omitempty"`

	// severity
	Severity int32 `json:"severity,omitempty"`

	// status
	// Enum: [ERROR IGNORED PROCESSED WARN]
	Status string `json:"status,omitempty"`
}

// Validate validates this notification process result
func (m *NotificationProcessResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var notificationProcessResultTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ERROR","IGNORED","PROCESSED","WARN"]`), &res); err != nil {
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

func (m *NotificationProcessResult) validateStatus(formats strfmt.Registry) error {

	if swag.IsZero(m.Status) { // not required
		return nil
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", m.Status); err != nil {
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
