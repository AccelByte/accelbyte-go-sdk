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

// ModelsGameBinaryRecordMetadataRequest Models game binary record metadata request
//
// swagger:model Models game binary record metadata request.
type ModelsGameBinaryRecordMetadataRequest struct {

	// Indicate which party that could modify the record
	// Required: true
	SetBy *string `json:"set_by"`
}

// Validate validates this Models game binary record metadata request
func (m *ModelsGameBinaryRecordMetadataRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSetBy(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGameBinaryRecordMetadataRequest) validateSetBy(formats strfmt.Registry) error {

	if err := validate.Required("set_by", "body", m.SetBy); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGameBinaryRecordMetadataRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGameBinaryRecordMetadataRequest) UnmarshalBinary(b []byte) error {
	var res ModelsGameBinaryRecordMetadataRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
