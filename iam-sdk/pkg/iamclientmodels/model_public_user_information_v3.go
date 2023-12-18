// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelPublicUserInformationV3 Model public user information V3
//
// swagger:model Model public user information V3.
type ModelPublicUserInformationV3 struct {

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// displayname
	// Required: true
	DisplayName *string `json:"displayName"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// userid
	// Required: true
	UserID *string `json:"userId"`

	// username
	// Required: true
	UserName *string `json:"userName"`

	// userplatforminfos
	UserPlatformInfos []*ModelUserPlatformInfo `json:"userPlatformInfos,omitempty"`
}

// Validate validates this Model public user information V3
func (m *ModelPublicUserInformationV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelPublicUserInformationV3) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserInformationV3) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("displayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserInformationV3) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserInformationV3) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserInformationV3) validateUserName(formats strfmt.Registry) error {

	if err := validate.Required("userName", "body", m.UserName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPublicUserInformationV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPublicUserInformationV3) UnmarshalBinary(b []byte) error {
	var res ModelPublicUserInformationV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
