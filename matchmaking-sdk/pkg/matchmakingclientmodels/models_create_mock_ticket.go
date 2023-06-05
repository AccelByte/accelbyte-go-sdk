// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCreateMockTicket Models create mock ticket
//
// swagger:model Models create mock ticket.
type ModelsCreateMockTicket struct {

	// attribute_name
	// Required: true
	AttributeName *string `json:"attribute_name"`

	// count
	// Required: true
	// Format: int32
	Count *int32 `json:"count"`

	// mmrmax
	// Required: true
	// Format: double
	MmrMax *float64 `json:"mmrMax"`

	// mmrmean
	// Required: true
	// Format: double
	MmrMean *float64 `json:"mmrMean"`

	// mmrmin
	// Required: true
	// Format: double
	MmrMin *float64 `json:"mmrMin"`

	// mmrstddev
	// Required: true
	// Format: double
	MmrStdDev *float64 `json:"mmrStdDev"`
}

// Validate validates this Models create mock ticket
func (m *ModelsCreateMockTicket) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAttributeName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMmrMax(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMmrMean(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMmrMin(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMmrStdDev(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCreateMockTicket) validateAttributeName(formats strfmt.Registry) error {

	if err := validate.Required("attribute_name", "body", m.AttributeName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateMockTicket) validateCount(formats strfmt.Registry) error {

	if err := validate.Required("count", "body", m.Count); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateMockTicket) validateMmrMax(formats strfmt.Registry) error {

	if err := validate.Required("mmrMax", "body", m.MmrMax); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateMockTicket) validateMmrMean(formats strfmt.Registry) error {

	if err := validate.Required("mmrMean", "body", m.MmrMean); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateMockTicket) validateMmrMin(formats strfmt.Registry) error {

	if err := validate.Required("mmrMin", "body", m.MmrMin); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateMockTicket) validateMmrStdDev(formats strfmt.Registry) error {

	if err := validate.Required("mmrStdDev", "body", m.MmrStdDev); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateMockTicket) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateMockTicket) UnmarshalBinary(b []byte) error {
	var res ModelsCreateMockTicket
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
