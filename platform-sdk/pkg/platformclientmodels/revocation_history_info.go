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

// RevocationHistoryInfo Revocation history info
//
// swagger:model Revocation history info.
type RevocationHistoryInfo struct {

	// created at
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// credit revocations
	CreditRevocations []*CreditRevocation `json:"creditRevocations,omitempty"`

	// entitlement revocations
	EntitlementRevocations []*EntitlementRevocation `json:"entitlementRevocations,omitempty"`

	// id
	ID string `json:"id,omitempty"`

	// item revocations
	ItemRevocations []*ItemRevocation `json:"itemRevocations,omitempty"`

	// meta
	Meta interface{} `json:"meta,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// revocation errors
	RevocationErrors []*RevocationError `json:"revocationErrors,omitempty"`

	// revoke entries
	RevokeEntries []*RevokeEntry `json:"revokeEntries,omitempty"`

	// source
	Source string `json:"source,omitempty"`

	// status
	// Enum: ['FAIL', 'SUCCESS']
	Status string `json:"status,omitempty"`

	// transactionId, Order No, DLC Order No.
	TransactionID string `json:"transactionId,omitempty"`

	// updated at
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// userId
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Revocation history info
func (m *RevocationHistoryInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var revocationHistoryInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		revocationHistoryInfoTypeStatusPropEnum = append(revocationHistoryInfoTypeStatusPropEnum, v)
	}
}

const (

	// RevocationHistoryInfoStatusFAIL captures enum value "FAIL"
	RevocationHistoryInfoStatusFAIL string = "FAIL"

	// RevocationHistoryInfoStatusSUCCESS captures enum value "SUCCESS"
	RevocationHistoryInfoStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *RevocationHistoryInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, revocationHistoryInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RevocationHistoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevocationHistoryInfo) UnmarshalBinary(b []byte) error {
	var res RevocationHistoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
