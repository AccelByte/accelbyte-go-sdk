// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ApimodelUpdateAppV2Request Apimodel update app V2 request
//
// swagger:model Apimodel update app V2 request.
type ApimodelUpdateAppV2Request struct {

	// description
	Description string `json:"description,omitempty"`
}

// Validate validates this Apimodel update app V2 request
func (m *ApimodelUpdateAppV2Request) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelUpdateAppV2Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelUpdateAppV2Request) UnmarshalBinary(b []byte) error {
	var res ApimodelUpdateAppV2Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
