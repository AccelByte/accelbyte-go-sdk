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

// ModelUserPlatformMetadata Model user platform metadata
//
// swagger:model Model user platform metadata.
type ModelUserPlatformMetadata struct {

	// metadata
	// Required: true
	Metadata interface{} `json:"metadata"`

	// the namespace of this metadata query from
	// Required: true
	Namespace *string `json:"namespace"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserId"`

	// it is always the publisher user id. this is deprecate, and will be removed
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Model user platform metadata
func (m *ModelUserPlatformMetadata) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformUserID(formats); err != nil {
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

func (m *ModelUserPlatformMetadata) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPlatformMetadata) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserId", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPlatformMetadata) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserPlatformMetadata) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserPlatformMetadata) UnmarshalBinary(b []byte) error {
	var res ModelUserPlatformMetadata
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
