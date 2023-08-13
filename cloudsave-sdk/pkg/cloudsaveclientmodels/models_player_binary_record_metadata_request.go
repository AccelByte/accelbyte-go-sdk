// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsPlayerBinaryRecordMetadataRequest Models player binary record metadata request
//
// swagger:model Models player binary record metadata request.
type ModelsPlayerBinaryRecordMetadataRequest struct {

	// is_public
	IsPublic bool `json:"is_public"`

	// Indicate which party that could modify the record
	SetBy string `json:"set_by,omitempty"`
}

// Validate validates this Models player binary record metadata request
func (m *ModelsPlayerBinaryRecordMetadataRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPlayerBinaryRecordMetadataRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPlayerBinaryRecordMetadataRequest) UnmarshalBinary(b []byte) error {
	var res ModelsPlayerBinaryRecordMetadataRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
