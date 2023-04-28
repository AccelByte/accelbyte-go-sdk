// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// XsollaConfig Xsolla config
//
// swagger:model Xsolla config.
type XsollaConfig struct {

	// api key, max length is 4096
	APIKey string `json:"apiKey,omitempty"`

	// flow completion url, max length is 2000
	FlowCompletionURL string `json:"flowCompletionUrl,omitempty"`

	// merchant id
	// Format: int32
	MerchantID int32 `json:"merchantId,omitempty"`

	// project id
	// Format: int32
	ProjectID int32 `json:"projectId,omitempty"`

	// project secret key, max length is 4096
	ProjectSecretKey string `json:"projectSecretKey,omitempty"`
}

// Validate validates this Xsolla config
func (m *XsollaConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *XsollaConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XsollaConfig) UnmarshalBinary(b []byte) error {
	var res XsollaConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
