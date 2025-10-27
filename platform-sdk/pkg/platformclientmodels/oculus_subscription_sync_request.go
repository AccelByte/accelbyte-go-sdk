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

// OculusSubscriptionSyncRequest Oculus subscription sync request
//
// swagger:model Oculus subscription sync request.
type OculusSubscriptionSyncRequest struct {

	// Meta Quest Subscription, if pass an empty list or null, will fetch all of subscription sku which config in AGS subscription config.
	Skus []string `json:"skus,omitempty"`
}

// Validate validates this Oculus subscription sync request
func (m *OculusSubscriptionSyncRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *OculusSubscriptionSyncRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OculusSubscriptionSyncRequest) UnmarshalBinary(b []byte) error {
	var res OculusSubscriptionSyncRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
