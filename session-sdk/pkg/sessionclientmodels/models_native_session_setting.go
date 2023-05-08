// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsNativeSessionSetting Models native session setting
//
// swagger:model Models native session setting.
type ModelsNativeSessionSetting struct {

	// psnservicelabel
	// Required: true
	// Format: int32
	PSNServiceLabel *int32 `json:"PSNServiceLabel"`

	// sessiontitle
	// Required: true
	SessionTitle *string `json:"SessionTitle"`

	// shouldsync
	ShouldSync bool `json:"ShouldSync"`

	// xboxserviceconfigid
	// Required: true
	XboxServiceConfigID *string `json:"XboxServiceConfigID"`

	// xboxsessiontemplatename
	// Required: true
	XboxSessionTemplateName *string `json:"XboxSessionTemplateName"`
}

// Validate validates this Models native session setting
func (m *ModelsNativeSessionSetting) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePSNServiceLabel(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionTitle(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateXboxServiceConfigID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateXboxSessionTemplateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsNativeSessionSetting) validatePSNServiceLabel(formats strfmt.Registry) error {

	if err := validate.Required("PSNServiceLabel", "body", m.PSNServiceLabel); err != nil {
		return err
	}

	return nil
}

func (m *ModelsNativeSessionSetting) validateSessionTitle(formats strfmt.Registry) error {

	if err := validate.Required("SessionTitle", "body", m.SessionTitle); err != nil {
		return err
	}

	return nil
}

func (m *ModelsNativeSessionSetting) validateXboxServiceConfigID(formats strfmt.Registry) error {

	if err := validate.Required("XboxServiceConfigID", "body", m.XboxServiceConfigID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsNativeSessionSetting) validateXboxSessionTemplateName(formats strfmt.Registry) error {

	if err := validate.Required("XboxSessionTemplateName", "body", m.XboxSessionTemplateName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsNativeSessionSetting) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsNativeSessionSetting) UnmarshalBinary(b []byte) error {
	var res ModelsNativeSessionSetting
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
