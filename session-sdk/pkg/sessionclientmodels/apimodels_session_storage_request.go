// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ApimodelsSessionStorageRequest Apimodels session storage request
//
// swagger:model Apimodels session storage request.
type ApimodelsSessionStorageRequest struct {

	// leader
	// Required: true
	Leader interface{} `json:"leader"`
}

// Validate validates this Apimodels session storage request
func (m *ApimodelsSessionStorageRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsSessionStorageRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsSessionStorageRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsSessionStorageRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
