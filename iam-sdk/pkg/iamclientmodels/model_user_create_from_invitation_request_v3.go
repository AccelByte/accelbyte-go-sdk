// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUserCreateFromInvitationRequestV3 Model user create from invitation request V3
//
// swagger:model Model user create from invitation request V3.
type ModelUserCreateFromInvitationRequestV3 struct {

	// acceptedpolicies
	AcceptedPolicies []*LegalAcceptedPoliciesRequest `json:"acceptedPolicies,omitempty"`

	// authtype
	// Enum: ['EMAILPASSWD']
	// Required: true
	AuthType *string `json:"authType"`

	// country
	// Required: true
	Country *string `json:"country"`

	// dateofbirth
	DateOfBirth string `json:"dateOfBirth,omitempty"`

	// displayname
	// Required: true
	DisplayName *string `json:"displayName"`

	// password
	// Required: true
	Password *string `json:"password"`

	// reachminimumage
	// Required: true
	ReachMinimumAge *bool `json:"reachMinimumAge"`
}

// Validate validates this Model user create from invitation request V3
func (m *ModelUserCreateFromInvitationRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAuthType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCountry(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePassword(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReachMinimumAge(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelUserCreateFromInvitationRequestV3TypeAuthTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EMAILPASSWD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelUserCreateFromInvitationRequestV3TypeAuthTypePropEnum = append(modelUserCreateFromInvitationRequestV3TypeAuthTypePropEnum, v)
	}
}

const (

	// ModelUserCreateFromInvitationRequestV3AuthTypeEMAILPASSWD captures enum value "EMAILPASSWD"
	ModelUserCreateFromInvitationRequestV3AuthTypeEMAILPASSWD string = "EMAILPASSWD"
)

// prop value enum
func (m *ModelUserCreateFromInvitationRequestV3) validateAuthTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelUserCreateFromInvitationRequestV3TypeAuthTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelUserCreateFromInvitationRequestV3) validateAuthType(formats strfmt.Registry) error {

	if err := validate.Required("authType", "body", m.AuthType); err != nil {
		return err
	}

	// value enum
	if err := m.validateAuthTypeEnum("authType", "body", *m.AuthType); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateFromInvitationRequestV3) validateCountry(formats strfmt.Registry) error {

	if err := validate.Required("country", "body", m.Country); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateFromInvitationRequestV3) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("displayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateFromInvitationRequestV3) validatePassword(formats strfmt.Registry) error {

	if err := validate.Required("password", "body", m.Password); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserCreateFromInvitationRequestV3) validateReachMinimumAge(formats strfmt.Registry) error {

	if err := validate.Required("reachMinimumAge", "body", m.ReachMinimumAge); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserCreateFromInvitationRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserCreateFromInvitationRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelUserCreateFromInvitationRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
