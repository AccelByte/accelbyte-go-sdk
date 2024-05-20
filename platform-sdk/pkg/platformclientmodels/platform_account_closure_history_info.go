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

// PlatformAccountClosureHistoryInfo Platform account closure history info
//
// swagger:model Platform account closure history info.
type PlatformAccountClosureHistoryInfo struct {

	// entitlements
	Entitlements []*SimpleEntitlement `json:"entitlements,omitempty"`

	// history id
	// Required: true
	ID *string `json:"id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// 3rd party platform
	// Required: true
	Platform *string `json:"platform"`

	// history progression
	// Enum: ['IN_PROGRESS', 'SUCCESS']
	// Required: true
	Progression *string `json:"progression"`

	// user dlcs
	UserDLCS []*SimpleUserDLC `json:"userDlcS,omitempty"`

	// user id
	// Required: true
	UserID *string `json:"userId"`

	// wallets
	Wallets []*SimpleWallet `json:"wallets,omitempty"`
}

// Validate validates this Platform account closure history info
func (m *PlatformAccountClosureHistoryInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatform(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProgression(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PlatformAccountClosureHistoryInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *PlatformAccountClosureHistoryInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *PlatformAccountClosureHistoryInfo) validatePlatform(formats strfmt.Registry) error {

	if err := validate.Required("platform", "body", m.Platform); err != nil {
		return err
	}

	return nil
}

var platformAccountClosureHistoryInfoTypeProgressionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["IN_PROGRESS", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		platformAccountClosureHistoryInfoTypeProgressionPropEnum = append(platformAccountClosureHistoryInfoTypeProgressionPropEnum, v)
	}
}

const (

	// PlatformAccountClosureHistoryInfoProgressionINPROGRESS captures enum value "IN_PROGRESS"
	PlatformAccountClosureHistoryInfoProgressionINPROGRESS string = "IN_PROGRESS"

	// PlatformAccountClosureHistoryInfoProgressionSUCCESS captures enum value "SUCCESS"
	PlatformAccountClosureHistoryInfoProgressionSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *PlatformAccountClosureHistoryInfo) validateProgressionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, platformAccountClosureHistoryInfoTypeProgressionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PlatformAccountClosureHistoryInfo) validateProgression(formats strfmt.Registry) error {

	if err := validate.Required("progression", "body", m.Progression); err != nil {
		return err
	}

	// value enum
	if err := m.validateProgressionEnum("progression", "body", *m.Progression); err != nil {
		return err
	}

	return nil
}

func (m *PlatformAccountClosureHistoryInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PlatformAccountClosureHistoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlatformAccountClosureHistoryInfo) UnmarshalBinary(b []byte) error {
	var res PlatformAccountClosureHistoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
