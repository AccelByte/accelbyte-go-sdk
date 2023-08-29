// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inventoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsUpdateInventoryReq Apimodels update inventory req
//
// swagger:model Apimodels update inventory req.
type ApimodelsUpdateInventoryReq struct {

	// incmaxslots
	// Required: true
	// Format: int32
	IncMaxSlots *int32 `json:"incMaxSlots"`
}

// Validate validates this Apimodels update inventory req
func (m *ApimodelsUpdateInventoryReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIncMaxSlots(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsUpdateInventoryReq) validateIncMaxSlots(formats strfmt.Registry) error {

	if err := validate.Required("incMaxSlots", "body", m.IncMaxSlots); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsUpdateInventoryReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsUpdateInventoryReq) UnmarshalBinary(b []byte) error {
	var res ApimodelsUpdateInventoryReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
