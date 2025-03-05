// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ResetJobRequest Reset job request
//
// swagger:model Reset job request.
type ResetJobRequest struct {

	// Steam env
	// Enum: ['LIVE', 'SANDBOX']
	Env string `json:"env,omitempty"`

	// last time
	// Format: date-time
	LastTime *strfmt.DateTime `json:"lastTime,omitempty"`
}

// Validate validates this Reset job request
func (m *ResetJobRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var resetJobRequestTypeEnvPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["LIVE", "SANDBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		resetJobRequestTypeEnvPropEnum = append(resetJobRequestTypeEnvPropEnum, v)
	}
}

const (

	// ResetJobRequestEnvLIVE captures enum value "LIVE"
	ResetJobRequestEnvLIVE string = "LIVE"

	// ResetJobRequestEnvSANDBOX captures enum value "SANDBOX"
	ResetJobRequestEnvSANDBOX string = "SANDBOX"
)

// prop value enum
func (m *ResetJobRequest) validateEnvEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, resetJobRequestTypeEnvPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ResetJobRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ResetJobRequest) UnmarshalBinary(b []byte) error {
	var res ResetJobRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
