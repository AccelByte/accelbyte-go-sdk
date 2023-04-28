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

// WxPayConfigRequest Wx pay config request
//
// swagger:model Wx pay config request.
type WxPayConfigRequest struct {

	// wxpay appId
	AppID string `json:"appId,omitempty"`

	// wxpay key
	Key string `json:"key,omitempty"`

	// wxpay mchid
	Mchid string `json:"mchid,omitempty"`

	// return url
	ReturnURL string `json:"returnUrl,omitempty"`
}

// Validate validates this Wx pay config request
func (m *WxPayConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *WxPayConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *WxPayConfigRequest) UnmarshalBinary(b []byte) error {
	var res WxPayConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
