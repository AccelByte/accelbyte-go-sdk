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

	// dlcrewardversion
	// Format: int32
	DLCRewardVersion int32 `json:"dlcRewardVersion,omitempty"`

	// entitlementoriginsyncresult
	EntitlementOriginSyncResult []*EntitlementOriginSyncResult `json:"entitlementOriginSyncResult,omitempty"`

	// entitlementoriginsyncstatus
	// Enum: ['NOT_SYNCED', 'SYNCED', 'SYNCED_FAILED']
	EntitlementOriginSyncStatus string `json:"entitlementOriginSyncStatus,omitempty"`

	// entitlementsummaries
	EntitlementSummaries []*EntitlementSummary `json:"entitlementSummaries,omitempty"`

	// id
	ID string `json:"id,omitempty"`

	// metadata
	Metadata interface{} `json:"metadata,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// obtainedat
	// Format: date-time
	ObtainedAt *strfmt.DateTime `json:"obtainedAt,omitempty"`

	// platform
	// Enum: ['EPICGAMES', 'OCULUS', 'PSN', 'STEAM', 'XBOX']
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

var userDlcRecordTypeEntitlementOriginSyncStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["NOT_SYNCED", "SYNCED", "SYNCED_FAILED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		userDlcRecordTypeEntitlementOriginSyncStatusPropEnum = append(userDlcRecordTypeEntitlementOriginSyncStatusPropEnum, v)
	}
}

const (

	// UserDLCRecordEntitlementOriginSyncStatusNOTSYNCED captures enum value "NOT_SYNCED"
	UserDLCRecordEntitlementOriginSyncStatusNOTSYNCED string = "NOT_SYNCED"

	// UserDLCRecordEntitlementOriginSyncStatusSYNCED captures enum value "SYNCED"
	UserDLCRecordEntitlementOriginSyncStatusSYNCED string = "SYNCED"

	// UserDLCRecordEntitlementOriginSyncStatusSYNCEDFAILED captures enum value "SYNCED_FAILED"
	UserDLCRecordEntitlementOriginSyncStatusSYNCEDFAILED string = "SYNCED_FAILED"
)

// prop value enum
func (m *UserDLCRecord) validateEntitlementOriginSyncStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, userDlcRecordTypeEntitlementOriginSyncStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

var userDlcRecordTypePlatformPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPICGAMES", "OCULUS", "PSN", "STEAM", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		userDlcRecordTypePlatformPropEnum = append(userDlcRecordTypePlatformPropEnum, v)
	}
}

const (

	// UserDLCRecordPlatformEPICGAMES captures enum value "EPICGAMES"
	UserDLCRecordPlatformEPICGAMES string = "EPICGAMES"

	// UserDLCRecordPlatformOCULUS captures enum value "OCULUS"
	UserDLCRecordPlatformOCULUS string = "OCULUS"

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
