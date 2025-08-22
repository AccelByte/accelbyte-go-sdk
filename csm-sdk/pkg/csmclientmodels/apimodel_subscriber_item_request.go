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

// ApimodelSubscriberItemRequest Apimodel subscriber item request
//
// swagger:model Apimodel subscriber item request.
type ApimodelSubscriberItemRequest struct {

	// emailaddress
	EmailAddress string `json:"emailAddress,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Apimodel subscriber item request
func (m *ApimodelSubscriberItemRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelSubscriberItemRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelSubscriberItemRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelSubscriberItemRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
