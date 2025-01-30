// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package loginqueueclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsConfigurationRequest Apimodels configuration request
//
// swagger:model Apimodels configuration request.
type ApimodelsConfigurationRequest struct {

	// enabled
	// Required: true
	Enabled *bool `json:"enabled"`

	// maxconcurrency
	// Required: true
	// Format: int32
	MaxConcurrency *int32 `json:"maxConcurrency"`

	// maxloginrate
	// Required: true
	// Format: int32
	MaxLoginRate *int32 `json:"maxLoginRate"`

	// minactivationperiodinsecond
	// Required: true
	// Format: int32
	MinActivationPeriodInSecond *int32 `json:"minActivationPeriodInSecond"`

	// playerpollingtimeinsecond
	// Required: true
	// Format: int32
	PlayerPollingTimeInSecond *int32 `json:"playerPollingTimeInSecond"`

	// playerreconnectgraceperiodinsecond
	// Required: true
	// Format: int32
	PlayerReconnectGracePeriodInSecond *int32 `json:"playerReconnectGracePeriodInSecond"`

	// queuereconnectgraceperiodinsecond
	// Required: true
	// Format: int32
	QueueReconnectGracePeriodInSecond *int32 `json:"queueReconnectGracePeriodInSecond"`

	// safetymarginpercentage
	// Required: true
	// Format: int32
	SafetyMarginPercentage *int32 `json:"safetyMarginPercentage"`
}

// Validate validates this Apimodels configuration request
func (m *ApimodelsConfigurationRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxConcurrency(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxLoginRate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinActivationPeriodInSecond(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlayerPollingTimeInSecond(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlayerReconnectGracePeriodInSecond(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQueueReconnectGracePeriodInSecond(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSafetyMarginPercentage(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsConfigurationRequest) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationRequest) validateMaxConcurrency(formats strfmt.Registry) error {

	if err := validate.Required("maxConcurrency", "body", m.MaxConcurrency); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationRequest) validateMaxLoginRate(formats strfmt.Registry) error {

	if err := validate.Required("maxLoginRate", "body", m.MaxLoginRate); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationRequest) validateMinActivationPeriodInSecond(formats strfmt.Registry) error {

	if err := validate.Required("minActivationPeriodInSecond", "body", m.MinActivationPeriodInSecond); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationRequest) validatePlayerPollingTimeInSecond(formats strfmt.Registry) error {

	if err := validate.Required("playerPollingTimeInSecond", "body", m.PlayerPollingTimeInSecond); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationRequest) validatePlayerReconnectGracePeriodInSecond(formats strfmt.Registry) error {

	if err := validate.Required("playerReconnectGracePeriodInSecond", "body", m.PlayerReconnectGracePeriodInSecond); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationRequest) validateQueueReconnectGracePeriodInSecond(formats strfmt.Registry) error {

	if err := validate.Required("queueReconnectGracePeriodInSecond", "body", m.QueueReconnectGracePeriodInSecond); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationRequest) validateSafetyMarginPercentage(formats strfmt.Registry) error {

	if err := validate.Required("safetyMarginPercentage", "body", m.SafetyMarginPercentage); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsConfigurationRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsConfigurationRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsConfigurationRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
