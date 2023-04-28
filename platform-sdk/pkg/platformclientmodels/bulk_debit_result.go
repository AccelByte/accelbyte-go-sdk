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

// BulkDebitResult Bulk debit result
//
// swagger:model Bulk debit result.
type BulkDebitResult struct {

	// faillist
	FailList []*DebitResult `json:"failList,omitempty"`

	// status
	// Enum: ['FAIL', 'PARTIAL_SUCCESS', 'SUCCESS']
	Status string `json:"status,omitempty"`

	// successlist
	SuccessList []*DebitResult `json:"successList,omitempty"`
}

// Validate validates this Bulk debit result
func (m *BulkDebitResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var bulkDebitResultTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "PARTIAL_SUCCESS", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		bulkDebitResultTypeStatusPropEnum = append(bulkDebitResultTypeStatusPropEnum, v)
	}
}

const (

	// BulkDebitResultStatusFAIL captures enum value "FAIL"
	BulkDebitResultStatusFAIL string = "FAIL"

	// BulkDebitResultStatusPARTIALSUCCESS captures enum value "PARTIAL_SUCCESS"
	BulkDebitResultStatusPARTIALSUCCESS string = "PARTIAL_SUCCESS"

	// BulkDebitResultStatusSUCCESS captures enum value "SUCCESS"
	BulkDebitResultStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *BulkDebitResult) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, bulkDebitResultTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *BulkDebitResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkDebitResult) UnmarshalBinary(b []byte) error {
	var res BulkDebitResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
