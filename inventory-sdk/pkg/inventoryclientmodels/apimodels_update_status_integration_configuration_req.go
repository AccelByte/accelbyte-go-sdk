// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inventoryclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsUpdateStatusIntegrationConfigurationReq Apimodels update status integration configuration req
//
// swagger:model Apimodels update status integration configuration req.
type ApimodelsUpdateStatusIntegrationConfigurationReq struct {

	// status
	// Enum: ['INIT', 'TIED']
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Apimodels update status integration configuration req
func (m *ApimodelsUpdateStatusIntegrationConfigurationReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var apimodelsUpdateStatusIntegrationConfigurationReqTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["INIT", "TIED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsUpdateStatusIntegrationConfigurationReqTypeStatusPropEnum = append(apimodelsUpdateStatusIntegrationConfigurationReqTypeStatusPropEnum, v)
	}
}

const (

	// ApimodelsUpdateStatusIntegrationConfigurationReqStatusINIT captures enum value "INIT"
	ApimodelsUpdateStatusIntegrationConfigurationReqStatusINIT string = "INIT"

	// ApimodelsUpdateStatusIntegrationConfigurationReqStatusTIED captures enum value "TIED"
	ApimodelsUpdateStatusIntegrationConfigurationReqStatusTIED string = "TIED"
)

// prop value enum
func (m *ApimodelsUpdateStatusIntegrationConfigurationReq) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsUpdateStatusIntegrationConfigurationReqTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsUpdateStatusIntegrationConfigurationReq) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsUpdateStatusIntegrationConfigurationReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsUpdateStatusIntegrationConfigurationReq) UnmarshalBinary(b []byte) error {
	var res ApimodelsUpdateStatusIntegrationConfigurationReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
