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

// ModelsBinaryRecordRequest Models binary record request
//
// swagger:model Models binary record request.
type ModelsBinaryRecordRequest struct {

	// content_type
	// Required: true
	ContentType *string `json:"content_type"`

	// file_location
	// Required: true
	FileLocation *string `json:"file_location"`
}

// Validate validates this Models binary record request
func (m *ModelsBinaryRecordRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateContentType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFileLocation(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBinaryRecordRequest) validateContentType(formats strfmt.Registry) error {

	if err := validate.Required("content_type", "body", m.ContentType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBinaryRecordRequest) validateFileLocation(formats strfmt.Registry) error {

	if err := validate.Required("file_location", "body", m.FileLocation); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBinaryRecordRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBinaryRecordRequest) UnmarshalBinary(b []byte) error {
	var res ModelsBinaryRecordRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
