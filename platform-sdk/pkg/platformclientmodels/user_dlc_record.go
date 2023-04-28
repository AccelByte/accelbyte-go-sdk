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

// UserDLCRecord User DLC record
//
// swagger:model User DLC record.
type UserDLCRecord struct {

	// id
	ID string `json:"id,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// obtainedat
	// Format: date-time
	ObtainedAt *strfmt.DateTime `json:"obtainedAt,omitempty"`

	// platform
	// Enum: ['EPICGAMES', 'PSN', 'STEAM', 'XBOX']
	Platform string `json:"platform,omitempty"`

	// revocationresult
	RevocationResult *RevocationResult `json:"revocationResult,omitempty"`

	// revokeresults
	RevokeResults []*RevokeResult `json:"revokeResults,omitempty"`

	// revokedat
	// Format: date-time
	RevokedAt *strfmt.DateTime `json:"revokedAt,omitempty"`

	// rewards
	Rewards []*PlatformReward `json:"rewards,omitempty"`

	// sources
	// Unique: true
	Sources []string `json:"sources"`

	// status
	// Enum: ['FULFILLED', 'REVOKED', 'REVOKE_FAILED']
	Status string `json:"status,omitempty"`

	// transactionid
	TransactionID string `json:"transactionId,omitempty"`

	// userId
	UserID string `json:"userId,omitempty"`

	// version
	// Format: int32
	Version int32 `json:"version,omitempty"`
}

// Validate validates this User DLC record
func (m *UserDLCRecord) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var userDlcRecordTypePlatformPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPICGAMES", "PSN", "STEAM", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		userDlcRecordTypePlatformPropEnum = append(userDlcRecordTypePlatformPropEnum, v)
	}
}

const (

	// UserDLCRecordPlatformEPICGAMES captures enum value "EPICGAMES"
	UserDLCRecordPlatformEPICGAMES string = "EPICGAMES"

	// UserDLCRecordPlatformPSN captures enum value "PSN"
	UserDLCRecordPlatformPSN string = "PSN"

	// UserDLCRecordPlatformSTEAM captures enum value "STEAM"
	UserDLCRecordPlatformSTEAM string = "STEAM"

	// UserDLCRecordPlatformXBOX captures enum value "XBOX"
	UserDLCRecordPlatformXBOX string = "XBOX"
)

// prop value enum
func (m *UserDLCRecord) validatePlatformEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, userDlcRecordTypePlatformPropEnum, true); err != nil {
		return err
	}
	return nil
}

var userDlcRecordTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FULFILLED", "REVOKED", "REVOKE_FAILED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		userDlcRecordTypeStatusPropEnum = append(userDlcRecordTypeStatusPropEnum, v)
	}
}

const (

	// UserDLCRecordStatusFULFILLED captures enum value "FULFILLED"
	UserDLCRecordStatusFULFILLED string = "FULFILLED"

	// UserDLCRecordStatusREVOKED captures enum value "REVOKED"
	UserDLCRecordStatusREVOKED string = "REVOKED"

	// UserDLCRecordStatusREVOKEFAILED captures enum value "REVOKE_FAILED"
	UserDLCRecordStatusREVOKEFAILED string = "REVOKE_FAILED"
)

// prop value enum
func (m *UserDLCRecord) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, userDlcRecordTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UserDLCRecord) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserDLCRecord) UnmarshalBinary(b []byte) error {
	var res UserDLCRecord
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
