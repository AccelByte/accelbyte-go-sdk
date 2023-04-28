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

// XblDLCSyncRequest Xbl DLC sync request
//
// swagger:model Xbl DLC sync request.
type XblDLCSyncRequest struct {

	// xstsToken
	XstsToken string `json:"xstsToken,omitempty"`
}

// Validate validates this Xbl DLC sync request
func (m *XblDLCSyncRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *XblDLCSyncRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XblDLCSyncRequest) UnmarshalBinary(b []byte) error {
	var res XblDLCSyncRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
