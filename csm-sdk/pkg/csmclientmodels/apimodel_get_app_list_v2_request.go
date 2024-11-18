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

// ApimodelGetAppListV2Request Apimodel get app list V2 request
//
// swagger:model Apimodel get app list V2 request.
type ApimodelGetAppListV2Request struct {

	// appnames
	AppNames []string `json:"appNames,omitempty"`

	// appstatuses
	AppStatuses []string `json:"appStatuses,omitempty"`

	// fuzzyappname
	FuzzyAppName string `json:"fuzzyAppName,omitempty"`

	// scenario
	Scenario string `json:"scenario,omitempty"`
}

// Validate validates this Apimodel get app list V2 request
func (m *ApimodelGetAppListV2Request) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelGetAppListV2Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelGetAppListV2Request) UnmarshalBinary(b []byte) error {
	var res ApimodelGetAppListV2Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
