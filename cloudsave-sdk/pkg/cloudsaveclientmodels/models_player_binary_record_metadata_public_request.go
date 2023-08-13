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

// ModelsPlayerBinaryRecordMetadataPublicRequest Models player binary record metadata public request
//
// swagger:model Models player binary record metadata public request.
type ModelsPlayerBinaryRecordMetadataPublicRequest struct {

	// is_public
	IsPublic bool `json:"is_public"`
}

// Validate validates this Models player binary record metadata public request
func (m *ModelsPlayerBinaryRecordMetadataPublicRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPlayerBinaryRecordMetadataPublicRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPlayerBinaryRecordMetadataPublicRequest) UnmarshalBinary(b []byte) error {
	var res ModelsPlayerBinaryRecordMetadataPublicRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
