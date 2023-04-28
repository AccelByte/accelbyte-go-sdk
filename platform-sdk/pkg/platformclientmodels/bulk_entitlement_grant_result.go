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

// BulkEntitlementGrantResult Bulk entitlement grant result
//
// swagger:model Bulk entitlement grant result.
type BulkEntitlementGrantResult struct {

	// faillist
	FailList []*EntitlementGrantResult `json:"failList,omitempty"`

	// status
	// Enum: ['FAIL', 'PARTIAL_SUCCESS', 'SUCCESS']
	Status string `json:"status,omitempty"`

	// successlist
	SuccessList []*EntitlementGrantResult `json:"successList,omitempty"`
}

// Validate validates this Bulk entitlement grant result
func (m *BulkEntitlementGrantResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var bulkEntitlementGrantResultTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "PARTIAL_SUCCESS", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		bulkEntitlementGrantResultTypeStatusPropEnum = append(bulkEntitlementGrantResultTypeStatusPropEnum, v)
	}
}

const (

	// BulkEntitlementGrantResultStatusFAIL captures enum value "FAIL"
	BulkEntitlementGrantResultStatusFAIL string = "FAIL"

	// BulkEntitlementGrantResultStatusPARTIALSUCCESS captures enum value "PARTIAL_SUCCESS"
	BulkEntitlementGrantResultStatusPARTIALSUCCESS string = "PARTIAL_SUCCESS"

	// BulkEntitlementGrantResultStatusSUCCESS captures enum value "SUCCESS"
	BulkEntitlementGrantResultStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *BulkEntitlementGrantResult) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, bulkEntitlementGrantResultTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *BulkEntitlementGrantResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkEntitlementGrantResult) UnmarshalBinary(b []byte) error {
	var res BulkEntitlementGrantResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
