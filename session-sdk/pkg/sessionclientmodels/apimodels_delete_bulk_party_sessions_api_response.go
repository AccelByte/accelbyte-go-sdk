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

// ApimodelsDeleteBulkPartySessionsAPIResponse Apimodels delete bulk party sessions API response
//
// swagger:model Apimodels delete bulk party sessions API response.
type ApimodelsDeleteBulkPartySessionsAPIResponse struct {

	// failed
	Failed []*ApimodelsResponseDeleteBulkPartySessions `json:"failed,omitempty"`

	// success
	Success []string `json:"success,omitempty"`
}

// Validate validates this Apimodels delete bulk party sessions API response
func (m *ApimodelsDeleteBulkPartySessionsAPIResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsDeleteBulkPartySessionsAPIResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsDeleteBulkPartySessionsAPIResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsDeleteBulkPartySessionsAPIResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
