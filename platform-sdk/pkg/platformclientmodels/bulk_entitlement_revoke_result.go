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

// BulkEntitlementRevokeResult Bulk entitlement revoke result
//
// swagger:model Bulk entitlement revoke result.
type BulkEntitlementRevokeResult struct {

	// faillist
	FailList []*EntitlementRevokeResult `json:"failList,omitempty"`

	// status
	// Enum: ['FAIL', 'PARTIAL_SUCCESS', 'SUCCESS']
	Status string `json:"status,omitempty"`

	// successlist
	SuccessList []*EntitlementRevokeResult `json:"successList,omitempty"`
}

// Validate validates this Bulk entitlement revoke result
func (m *BulkEntitlementRevokeResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var bulkEntitlementRevokeResultTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "PARTIAL_SUCCESS", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		bulkEntitlementRevokeResultTypeStatusPropEnum = append(bulkEntitlementRevokeResultTypeStatusPropEnum, v)
	}
}

const (

	// BulkEntitlementRevokeResultStatusFAIL captures enum value "FAIL"
	BulkEntitlementRevokeResultStatusFAIL string = "FAIL"

	// BulkEntitlementRevokeResultStatusPARTIALSUCCESS captures enum value "PARTIAL_SUCCESS"
	BulkEntitlementRevokeResultStatusPARTIALSUCCESS string = "PARTIAL_SUCCESS"

	// BulkEntitlementRevokeResultStatusSUCCESS captures enum value "SUCCESS"
	BulkEntitlementRevokeResultStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *BulkEntitlementRevokeResult) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, bulkEntitlementRevokeResultTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *BulkEntitlementRevokeResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkEntitlementRevokeResult) UnmarshalBinary(b []byte) error {
	var res BulkEntitlementRevokeResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
