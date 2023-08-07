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

// PlatformDLCEntry Platform dlc entry
//
// swagger:model Platform dlc entry.
type PlatformDLCEntry struct {

	// platform: PSN, STEAM, XBOX, EPICGAMES, OCULUS
	// Enum: ['EPICGAMES', 'OCULUS', 'PSN', 'STEAM', 'XBOX']
	Platform string `json:"platform,omitempty"`

	// key is platform product id, value is dlc id
	PlatformDLCIDMap map[string]string `json:"platformDlcIdMap,omitempty"`
}

// Validate validates this Platform dlc entry
func (m *PlatformDLCEntry) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var platformDlcEntryTypePlatformPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPICGAMES", "OCULUS", "PSN", "STEAM", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		platformDlcEntryTypePlatformPropEnum = append(platformDlcEntryTypePlatformPropEnum, v)
	}
}

const (

	// PlatformDLCEntryPlatformEPICGAMES captures enum value "EPICGAMES"
	PlatformDLCEntryPlatformEPICGAMES string = "EPICGAMES"

	// PlatformDLCEntryPlatformOCULUS captures enum value "OCULUS"
	PlatformDLCEntryPlatformOCULUS string = "OCULUS"

	// PlatformDLCEntryPlatformPSN captures enum value "PSN"
	PlatformDLCEntryPlatformPSN string = "PSN"

	// PlatformDLCEntryPlatformSTEAM captures enum value "STEAM"
	PlatformDLCEntryPlatformSTEAM string = "STEAM"

	// PlatformDLCEntryPlatformXBOX captures enum value "XBOX"
	PlatformDLCEntryPlatformXBOX string = "XBOX"
)

// prop value enum
func (m *PlatformDLCEntry) validatePlatformEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, platformDlcEntryTypePlatformPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PlatformDLCEntry) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlatformDLCEntry) UnmarshalBinary(b []byte) error {
	var res PlatformDLCEntry
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
