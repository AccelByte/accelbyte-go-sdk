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

// ModelsStatResumeResponse Models stat resume response
//
// swagger:model Models stat resume response.
type ModelsStatResumeResponse struct {

	// max
	// Required: true
	Max *string `json:"max"`

	// mean
	// Required: true
	Mean *string `json:"mean"`

	// min
	// Required: true
	Min *string `json:"min"`

	// multiplier
	// Required: true
	Multiplier *string `json:"multiplier"`

	// stddev
	// Required: true
	Stddev *string `json:"stddev"`

	// valueshifts
	// Required: true
	ValueShifts map[string]string `json:"valueShifts"`

	// zscores
	// Required: true
	Zscores map[string]string `json:"zscores"`
}

// Validate validates this Models stat resume response
func (m *ModelsStatResumeResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMax(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMean(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMin(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMultiplier(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStddev(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsStatResumeResponse) validateMax(formats strfmt.Registry) error {

	if err := validate.Required("max", "body", m.Max); err != nil {
		return err
	}

	return nil
}

func (m *ModelsStatResumeResponse) validateMean(formats strfmt.Registry) error {

	if err := validate.Required("mean", "body", m.Mean); err != nil {
		return err
	}

	return nil
}

func (m *ModelsStatResumeResponse) validateMin(formats strfmt.Registry) error {

	if err := validate.Required("min", "body", m.Min); err != nil {
		return err
	}

	return nil
}

func (m *ModelsStatResumeResponse) validateMultiplier(formats strfmt.Registry) error {

	if err := validate.Required("multiplier", "body", m.Multiplier); err != nil {
		return err
	}

	return nil
}

func (m *ModelsStatResumeResponse) validateStddev(formats strfmt.Registry) error {

	if err := validate.Required("stddev", "body", m.Stddev); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsStatResumeResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsStatResumeResponse) UnmarshalBinary(b []byte) error {
	var res ModelsStatResumeResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
