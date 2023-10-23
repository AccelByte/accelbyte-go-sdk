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

// DLCConfigRewardShortInfo DLC config reward short info
//
// swagger:model DLC config reward short info.
type DLCConfigRewardShortInfo struct {

	// reward map, key is third-party platform DLC id, value is specific item sets
	Data map[string][]string `json:"data,omitempty"`

	// dlc type
	// Enum: ['EPICGAMES', 'OCULUS', 'PSN', 'STEAM', 'XBOX']
	DLCType string `json:"dlcType,omitempty"`
}

// Validate validates this DLC config reward short info
func (m *DLCConfigRewardShortInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var dlcConfigRewardShortInfoTypeDLCTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPICGAMES", "OCULUS", "PSN", "STEAM", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		dlcConfigRewardShortInfoTypeDLCTypePropEnum = append(dlcConfigRewardShortInfoTypeDLCTypePropEnum, v)
	}
}

const (

	// DLCConfigRewardShortInfoDLCTypeEPICGAMES captures enum value "EPICGAMES"
	DLCConfigRewardShortInfoDLCTypeEPICGAMES string = "EPICGAMES"

	// DLCConfigRewardShortInfoDLCTypeOCULUS captures enum value "OCULUS"
	DLCConfigRewardShortInfoDLCTypeOCULUS string = "OCULUS"

	// DLCConfigRewardShortInfoDLCTypePSN captures enum value "PSN"
	DLCConfigRewardShortInfoDLCTypePSN string = "PSN"

	// DLCConfigRewardShortInfoDLCTypeSTEAM captures enum value "STEAM"
	DLCConfigRewardShortInfoDLCTypeSTEAM string = "STEAM"

	// DLCConfigRewardShortInfoDLCTypeXBOX captures enum value "XBOX"
	DLCConfigRewardShortInfoDLCTypeXBOX string = "XBOX"
)

// prop value enum
func (m *DLCConfigRewardShortInfo) validateDLCTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, dlcConfigRewardShortInfoTypeDLCTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DLCConfigRewardShortInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DLCConfigRewardShortInfo) UnmarshalBinary(b []byte) error {
	var res DLCConfigRewardShortInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
