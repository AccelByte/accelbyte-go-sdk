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

// UserDLC User DLC
//
// swagger:model User DLC.
type UserDLC struct {

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// dlcs
	Dlcs []*DLCRecord `json:"dlcs,omitempty"`

	// id
	ID string `json:"id,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// platform
	// Enum: ['EPICGAMES', 'PSN', 'STEAM', 'XBOX']
	Platform string `json:"platform,omitempty"`

	// rvn
	// Format: int32
	Rvn int32 `json:"rvn,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this User DLC
func (m *UserDLC) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var userDlcTypePlatformPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPICGAMES", "PSN", "STEAM", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		userDlcTypePlatformPropEnum = append(userDlcTypePlatformPropEnum, v)
	}
}

const (

	// UserDLCPlatformEPICGAMES captures enum value "EPICGAMES"
	UserDLCPlatformEPICGAMES string = "EPICGAMES"

	// UserDLCPlatformPSN captures enum value "PSN"
	UserDLCPlatformPSN string = "PSN"

	// UserDLCPlatformSTEAM captures enum value "STEAM"
	UserDLCPlatformSTEAM string = "STEAM"

	// UserDLCPlatformXBOX captures enum value "XBOX"
	UserDLCPlatformXBOX string = "XBOX"
)

// prop value enum
func (m *UserDLC) validatePlatformEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, userDlcTypePlatformPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UserDLC) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserDLC) UnmarshalBinary(b []byte) error {
	var res UserDLC
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
