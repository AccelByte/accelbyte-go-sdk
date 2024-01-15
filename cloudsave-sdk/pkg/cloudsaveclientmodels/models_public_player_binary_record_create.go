// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPublicPlayerBinaryRecordCreate Models public player binary record create
//
// swagger:model Models public player binary record create.
type ModelsPublicPlayerBinaryRecordCreate struct {

	// File type of the binary record
	// Required: true
	FileType *string `json:"file_type"`

	// Indicate whether the player record is a public record or not
	IsPublic bool `json:"is_public"`

	// Player binary record identifier
	// Required: true
	Key *string `json:"key"`
}

// Validate validates this Models public player binary record create
func (m *ModelsPublicPlayerBinaryRecordCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFileType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateKey(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPublicPlayerBinaryRecordCreate) validateFileType(formats strfmt.Registry) error {

	if err := validate.Required("file_type", "body", m.FileType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPublicPlayerBinaryRecordCreate) validateKey(formats strfmt.Registry) error {

	if err := validate.Required("key", "body", m.Key); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPublicPlayerBinaryRecordCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPublicPlayerBinaryRecordCreate) UnmarshalBinary(b []byte) error {
	var res ModelsPublicPlayerBinaryRecordCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
