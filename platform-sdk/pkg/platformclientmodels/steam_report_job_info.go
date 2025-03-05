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

// SteamReportJobInfo Steam report job info
//
// swagger:model Steam report job info.
type SteamReportJobInfo struct {

	// The environment in which the report is running.
	// Enum: ['LIVE', 'SANDBOX']
	Env string `json:"env,omitempty"`

	// The unique identifier (UUID) for the report.
	ID string `json:"id,omitempty"`

	// The last start time of the report. This time (1970-01-01T00:00:00Z) will be used for the first run.
	// Format: date-time
	LastTime *strfmt.DateTime `json:"lastTime,omitempty"`

	// The AGS namespace associated with the report.
	Namespace string `json:"namespace,omitempty"`
}

// Validate validates this Steam report job info
func (m *SteamReportJobInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var steamReportJobInfoTypeEnvPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["LIVE", "SANDBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		steamReportJobInfoTypeEnvPropEnum = append(steamReportJobInfoTypeEnvPropEnum, v)
	}
}

const (

	// SteamReportJobInfoEnvLIVE captures enum value "LIVE"
	SteamReportJobInfoEnvLIVE string = "LIVE"

	// SteamReportJobInfoEnvSANDBOX captures enum value "SANDBOX"
	SteamReportJobInfoEnvSANDBOX string = "SANDBOX"
)

// prop value enum
func (m *SteamReportJobInfo) validateEnvEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, steamReportJobInfoTypeEnvPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *SteamReportJobInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SteamReportJobInfo) UnmarshalBinary(b []byte) error {
	var res SteamReportJobInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
