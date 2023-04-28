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

// ItemPurchaseConditionValidateRequest Item purchase condition validate request
//
// swagger:model Item purchase condition validate request.
type ItemPurchaseConditionValidateRequest struct {

	// itemids
	ItemIds []string `json:"itemIds,omitempty"`
}

// Validate validates this Item purchase condition validate request
func (m *ItemPurchaseConditionValidateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ItemPurchaseConditionValidateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemPurchaseConditionValidateRequest) UnmarshalBinary(b []byte) error {
	var res ItemPurchaseConditionValidateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
