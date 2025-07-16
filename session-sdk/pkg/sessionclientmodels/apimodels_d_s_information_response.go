// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsDSInformationResponse Apimodels DS information response
//
// swagger:model Apimodels DS information response.
type ApimodelsDSInformationResponse struct {

	// createdat
	// Required: true
	CreatedAt *string `json:"CreatedAt"`

	// requestedat
	// Required: true
	RequestedAt *string `json:"RequestedAt"`

	// server
	Server *ModelsGameServer `json:"Server,omitempty"`

	// status
	// Enum: ['AVAILABLE', 'DS_ERROR', 'FAILED_TO_REQUEST', 'NEED_TO_REQUEST', 'PREPARING', 'REQUESTED']
	Status string `json:"Status,omitempty"`

	// statusv2
	// Enum: ['AVAILABLE', 'DS_CANCELLED', 'DS_ERROR', 'ENDED', 'FAILED_TO_REQUEST', 'NEED_TO_REQUEST', 'PREPARING', 'REQUESTED', 'UNKNOWN']
	StatusV2 string `json:"StatusV2,omitempty"`
}

// Validate validates this Apimodels DS information response
func (m *ApimodelsDSInformationResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsDSInformationResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("CreatedAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsDSInformationResponse) validateRequestedAt(formats strfmt.Registry) error {

	if err := validate.Required("RequestedAt", "body", m.RequestedAt); err != nil {
		return err
	}

	return nil
}

var apimodelsDSInformationResponseTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AVAILABLE", "DS_ERROR", "FAILED_TO_REQUEST", "NEED_TO_REQUEST", "PREPARING", "REQUESTED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsDSInformationResponseTypeStatusPropEnum = append(apimodelsDSInformationResponseTypeStatusPropEnum, v)
	}
}

const (

	// ApimodelsDSInformationResponseStatusAVAILABLE captures enum value "AVAILABLE"
	ApimodelsDSInformationResponseStatusAVAILABLE string = "AVAILABLE"

	// ApimodelsDSInformationResponseStatusDSERROR captures enum value "DS_ERROR"
	ApimodelsDSInformationResponseStatusDSERROR string = "DS_ERROR"

	// ApimodelsDSInformationResponseStatusFAILEDTOREQUEST captures enum value "FAILED_TO_REQUEST"
	ApimodelsDSInformationResponseStatusFAILEDTOREQUEST string = "FAILED_TO_REQUEST"

	// ApimodelsDSInformationResponseStatusNEEDTOREQUEST captures enum value "NEED_TO_REQUEST"
	ApimodelsDSInformationResponseStatusNEEDTOREQUEST string = "NEED_TO_REQUEST"

	// ApimodelsDSInformationResponseStatusPREPARING captures enum value "PREPARING"
	ApimodelsDSInformationResponseStatusPREPARING string = "PREPARING"

	// ApimodelsDSInformationResponseStatusREQUESTED captures enum value "REQUESTED"
	ApimodelsDSInformationResponseStatusREQUESTED string = "REQUESTED"
)

// prop value enum
func (m *ApimodelsDSInformationResponse) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsDSInformationResponseTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

var apimodelsDSInformationResponseTypeStatusV2PropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AVAILABLE", "DS_CANCELLED", "DS_ERROR", "ENDED", "FAILED_TO_REQUEST", "NEED_TO_REQUEST", "PREPARING", "REQUESTED", "UNKNOWN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsDSInformationResponseTypeStatusV2PropEnum = append(apimodelsDSInformationResponseTypeStatusV2PropEnum, v)
	}
}

const (

	// ApimodelsDSInformationResponseStatusV2AVAILABLE captures enum value "AVAILABLE"
	ApimodelsDSInformationResponseStatusV2AVAILABLE string = "AVAILABLE"

	// ApimodelsDSInformationResponseStatusV2DSCANCELLED captures enum value "DS_CANCELLED"
	ApimodelsDSInformationResponseStatusV2DSCANCELLED string = "DS_CANCELLED"

	// ApimodelsDSInformationResponseStatusV2DSERROR captures enum value "DS_ERROR"
	ApimodelsDSInformationResponseStatusV2DSERROR string = "DS_ERROR"

	// ApimodelsDSInformationResponseStatusV2ENDED captures enum value "ENDED"
	ApimodelsDSInformationResponseStatusV2ENDED string = "ENDED"

	// ApimodelsDSInformationResponseStatusV2FAILEDTOREQUEST captures enum value "FAILED_TO_REQUEST"
	ApimodelsDSInformationResponseStatusV2FAILEDTOREQUEST string = "FAILED_TO_REQUEST"

	// ApimodelsDSInformationResponseStatusV2NEEDTOREQUEST captures enum value "NEED_TO_REQUEST"
	ApimodelsDSInformationResponseStatusV2NEEDTOREQUEST string = "NEED_TO_REQUEST"

	// ApimodelsDSInformationResponseStatusV2PREPARING captures enum value "PREPARING"
	ApimodelsDSInformationResponseStatusV2PREPARING string = "PREPARING"

	// ApimodelsDSInformationResponseStatusV2REQUESTED captures enum value "REQUESTED"
	ApimodelsDSInformationResponseStatusV2REQUESTED string = "REQUESTED"

	// ApimodelsDSInformationResponseStatusV2UNKNOWN captures enum value "UNKNOWN"
	ApimodelsDSInformationResponseStatusV2UNKNOWN string = "UNKNOWN"
)

// prop value enum
func (m *ApimodelsDSInformationResponse) validateStatusV2Enum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsDSInformationResponseTypeStatusV2PropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsDSInformationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsDSInformationResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsDSInformationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
