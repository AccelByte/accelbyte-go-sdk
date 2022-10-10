// Code generated by go-swagger; DO NOT EDIT.

package iamclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelDeviceBanRequestV4 model device ban request v4
//
// swagger:model model.DeviceBanRequestV4
type ModelDeviceBanRequestV4 struct {

	// comment
	// Required: true
	Comment *string `json:"comment"`

	// device Id
	// Required: true
	DeviceID *string `json:"deviceId"`

	// device type
	// Required: true
	DeviceType *string `json:"deviceType"`

	// enabled
	// Required: true
	Enabled *bool `json:"enabled"`

	// end date
	// Required: true
	EndDate *string `json:"endDate"`

	// ext
	// Required: true
	Ext interface{} `json:"ext"`

	// reason
	// Required: true
	Reason *string `json:"reason"`
}

// Validate validates this model device ban request v4
func (m *ModelDeviceBanRequestV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateComment(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateDeviceID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateDeviceType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateEndDate(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateExt(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateReason(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelDeviceBanRequestV4) validateComment(formats strfmt.Registry) error {

	if err := validate.Required("comment", "body", m.Comment); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanRequestV4) validateDeviceID(formats strfmt.Registry) error {

	if err := validate.Required("deviceId", "body", m.DeviceID); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanRequestV4) validateDeviceType(formats strfmt.Registry) error {

	if err := validate.Required("deviceType", "body", m.DeviceType); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanRequestV4) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanRequestV4) validateEndDate(formats strfmt.Registry) error {

	if err := validate.Required("endDate", "body", m.EndDate); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanRequestV4) validateExt(formats strfmt.Registry) error {

	if err := validate.Required("ext", "body", m.Ext); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanRequestV4) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelDeviceBanRequestV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelDeviceBanRequestV4) UnmarshalBinary(b []byte) error {
	var res ModelDeviceBanRequestV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
