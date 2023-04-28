// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsListConfigResponse Models list config response
//
// swagger:model Models list config response.
type ModelsListConfigResponse struct {

	// configs
	// Required: true
	Configs []*ModelsDSMConfigRecord `json:"configs"`
}

// Validate validates this Models list config response
func (m *ModelsListConfigResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateConfigs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsListConfigResponse) validateConfigs(formats strfmt.Registry) error {

	if err := validate.Required("configs", "body", m.Configs); err != nil {
		return err
	}

	for i := 0; i < len(m.Configs); i++ {
		if swag.IsZero(m.Configs[i]) { // not required
			continue
		}

		if m.Configs[i] != nil {
			if err := m.Configs[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("configs" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsListConfigResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsListConfigResponse) UnmarshalBinary(b []byte) error {
	var res ModelsListConfigResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
