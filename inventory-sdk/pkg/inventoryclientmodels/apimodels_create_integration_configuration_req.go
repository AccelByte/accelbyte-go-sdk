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

// ApimodelsCreateIntegrationConfigurationReq Apimodels create integration configuration req
//
// swagger:model Apimodels create integration configuration req.
type ApimodelsCreateIntegrationConfigurationReq struct {

	// mapitemtype
	MapItemType []string `json:"mapItemType,omitempty"`

	// servicename
	// Required: true
	ServiceName *string `json:"serviceName"`

	// targetinventorycode
	// Required: true
	TargetInventoryCode *string `json:"targetInventoryCode"`
}

// Validate validates this Apimodels create integration configuration req
func (m *ApimodelsCreateIntegrationConfigurationReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateServiceName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTargetInventoryCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsCreateIntegrationConfigurationReq) validateServiceName(formats strfmt.Registry) error {

	if err := validate.Required("serviceName", "body", m.ServiceName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateIntegrationConfigurationReq) validateTargetInventoryCode(formats strfmt.Registry) error {

	if err := validate.Required("targetInventoryCode", "body", m.TargetInventoryCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsCreateIntegrationConfigurationReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsCreateIntegrationConfigurationReq) UnmarshalBinary(b []byte) error {
	var res ApimodelsCreateIntegrationConfigurationReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
