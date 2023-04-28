// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsPreviewURL Models preview URL
//
// swagger:model Models preview URL.
type ModelsPreviewURL struct {

	// source
	Source string `json:"source,omitempty"`

	// url
	URL string `json:"url,omitempty"`
}

// Validate validates this Models preview URL
func (m *ModelsPreviewURL) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPreviewURL) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPreviewURL) UnmarshalBinary(b []byte) error {
	var res ModelsPreviewURL
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
