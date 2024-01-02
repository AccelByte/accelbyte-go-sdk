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

// DLCRecord DLC record
//
// swagger:model DLC record.
type DLCRecord struct {

	// entitlementoriginsyncresult
	EntitlementOriginSyncResult []*EntitlementOriginSyncResult `json:"entitlementOriginSyncResult,omitempty"`

	// entitlementoriginsyncstatus
	// Enum: ['NOT_SYNCED', 'SYNCED', 'SYNCED_FAILED']
	EntitlementOriginSyncStatus string `json:"entitlementOriginSyncStatus,omitempty"`

	// id
	ID string `json:"id,omitempty"`

	// metadata
	Metadata interface{} `json:"metadata,omitempty"`

	// obtainedat
	// Format: date-time
	ObtainedAt *strfmt.DateTime `json:"obtainedAt,omitempty"`

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

	// version
	// Format: int32
	Version int32 `json:"version,omitempty"`
}

// Validate validates this DLC record
func (m *DLCRecord) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var dlcRecordTypeEntitlementOriginSyncStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["NOT_SYNCED", "SYNCED", "SYNCED_FAILED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		dlcRecordTypeEntitlementOriginSyncStatusPropEnum = append(dlcRecordTypeEntitlementOriginSyncStatusPropEnum, v)
	}
}

const (

	// DLCRecordEntitlementOriginSyncStatusNOTSYNCED captures enum value "NOT_SYNCED"
	DLCRecordEntitlementOriginSyncStatusNOTSYNCED string = "NOT_SYNCED"

	// DLCRecordEntitlementOriginSyncStatusSYNCED captures enum value "SYNCED"
	DLCRecordEntitlementOriginSyncStatusSYNCED string = "SYNCED"

	// DLCRecordEntitlementOriginSyncStatusSYNCEDFAILED captures enum value "SYNCED_FAILED"
	DLCRecordEntitlementOriginSyncStatusSYNCEDFAILED string = "SYNCED_FAILED"
)

// prop value enum
func (m *DLCRecord) validateEntitlementOriginSyncStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, dlcRecordTypeEntitlementOriginSyncStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

var dlcRecordTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FULFILLED", "REVOKED", "REVOKE_FAILED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		dlcRecordTypeStatusPropEnum = append(dlcRecordTypeStatusPropEnum, v)
	}
}

const (

	// DLCRecordStatusFULFILLED captures enum value "FULFILLED"
	DLCRecordStatusFULFILLED string = "FULFILLED"

	// DLCRecordStatusREVOKED captures enum value "REVOKED"
	DLCRecordStatusREVOKED string = "REVOKED"

	// DLCRecordStatusREVOKEFAILED captures enum value "REVOKE_FAILED"
	DLCRecordStatusREVOKEFAILED string = "REVOKE_FAILED"
)

// prop value enum
func (m *DLCRecord) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, dlcRecordTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DLCRecord) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DLCRecord) UnmarshalBinary(b []byte) error {
	var res DLCRecord
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
