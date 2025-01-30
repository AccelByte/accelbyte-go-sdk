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

// ApimodelsConfigurationResponse Apimodels configuration response
//
// swagger:model Apimodels configuration response.
type ApimodelsConfigurationResponse struct {

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

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

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

// Validate validates this Apimodels configuration response
func (m *ApimodelsConfigurationResponse) Validate(formats strfmt.Registry) error {
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
	if err := m.validateNamespace(formats); err != nil {
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

func (m *ApimodelsConfigurationResponse) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationResponse) validateMaxConcurrency(formats strfmt.Registry) error {

	if err := validate.Required("maxConcurrency", "body", m.MaxConcurrency); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationResponse) validateMaxLoginRate(formats strfmt.Registry) error {

	if err := validate.Required("maxLoginRate", "body", m.MaxLoginRate); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationResponse) validateMinActivationPeriodInSecond(formats strfmt.Registry) error {

	if err := validate.Required("minActivationPeriodInSecond", "body", m.MinActivationPeriodInSecond); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationResponse) validatePlayerPollingTimeInSecond(formats strfmt.Registry) error {

	if err := validate.Required("playerPollingTimeInSecond", "body", m.PlayerPollingTimeInSecond); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationResponse) validatePlayerReconnectGracePeriodInSecond(formats strfmt.Registry) error {

	if err := validate.Required("playerReconnectGracePeriodInSecond", "body", m.PlayerReconnectGracePeriodInSecond); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationResponse) validateQueueReconnectGracePeriodInSecond(formats strfmt.Registry) error {

	if err := validate.Required("queueReconnectGracePeriodInSecond", "body", m.QueueReconnectGracePeriodInSecond); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConfigurationResponse) validateSafetyMarginPercentage(formats strfmt.Registry) error {

	if err := validate.Required("safetyMarginPercentage", "body", m.SafetyMarginPercentage); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsConfigurationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsConfigurationResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsConfigurationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
