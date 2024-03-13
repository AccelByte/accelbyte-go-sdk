// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// TimeLocation Time location
//
// swagger:model Time location.
type TimeLocation struct {

	// cacheend
	// Required: true
	// Format: int64
	CacheEnd *int64 `json:"cacheEnd"`

	// cachestart
	// Required: true
	// Format: int64
	CacheStart *int64 `json:"cacheStart"`

	// cachezone
	// Required: true
	CacheZone *TimeZone `json:"cacheZone"`

	// extend
	// Required: true
	Extend *string `json:"extend"`

	// name
	// Required: true
	Name *string `json:"name"`

	// tx
	// Required: true
	Tx []*TimeZoneTrans `json:"tx"`

	// zone
	// Required: true
	Zone []*TimeZone `json:"zone"`
}

// Validate validates this Time location
func (m *TimeLocation) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCacheEnd(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCacheStart(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCacheZone(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExtend(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTx(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateZone(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *TimeLocation) validateCacheEnd(formats strfmt.Registry) error {

	if err := validate.Required("cacheEnd", "body", m.CacheEnd); err != nil {
		return err
	}

	return nil
}

func (m *TimeLocation) validateCacheStart(formats strfmt.Registry) error {

	if err := validate.Required("cacheStart", "body", m.CacheStart); err != nil {
		return err
	}

	return nil
}

func (m *TimeLocation) validateCacheZone(formats strfmt.Registry) error {

	if err := validate.Required("cacheZone", "body", m.CacheZone); err != nil {
		return err
	}

	if m.CacheZone != nil {
		if err := m.CacheZone.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("cacheZone")
			}
			return err
		}
	}

	return nil
}

func (m *TimeLocation) validateExtend(formats strfmt.Registry) error {

	if err := validate.Required("extend", "body", m.Extend); err != nil {
		return err
	}

	return nil
}

func (m *TimeLocation) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *TimeLocation) validateTx(formats strfmt.Registry) error {

	if err := validate.Required("tx", "body", m.Tx); err != nil {
		return err
	}

	for i := 0; i < len(m.Tx); i++ {
		if swag.IsZero(m.Tx[i]) { // not required
			continue
		}

		if m.Tx[i] != nil {
			if err := m.Tx[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("tx" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *TimeLocation) validateZone(formats strfmt.Registry) error {

	if err := validate.Required("zone", "body", m.Zone); err != nil {
		return err
	}

	for i := 0; i < len(m.Zone); i++ {
		if swag.IsZero(m.Zone[i]) { // not required
			continue
		}

		if m.Zone[i] != nil {
			if err := m.Zone[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("zone" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *TimeLocation) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TimeLocation) UnmarshalBinary(b []byte) error {
	var res TimeLocation
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
