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

// BulkCreditResult Bulk credit result
//
// swagger:model Bulk credit result.
type BulkCreditResult struct {

	// faillist
	FailList []*CreditResult `json:"failList,omitempty"`

	// status
	// Enum: ['FAIL', 'PARTIAL_SUCCESS', 'SUCCESS']
	Status string `json:"status,omitempty"`

	// successlist
	SuccessList []*CreditResult `json:"successList,omitempty"`
}

// Validate validates this Bulk credit result
func (m *BulkCreditResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var bulkCreditResultTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "PARTIAL_SUCCESS", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		bulkCreditResultTypeStatusPropEnum = append(bulkCreditResultTypeStatusPropEnum, v)
	}
}

const (

	// BulkCreditResultStatusFAIL captures enum value "FAIL"
	BulkCreditResultStatusFAIL string = "FAIL"

	// BulkCreditResultStatusPARTIALSUCCESS captures enum value "PARTIAL_SUCCESS"
	BulkCreditResultStatusPARTIALSUCCESS string = "PARTIAL_SUCCESS"

	// BulkCreditResultStatusSUCCESS captures enum value "SUCCESS"
	BulkCreditResultStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *BulkCreditResult) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, bulkCreditResultTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *BulkCreditResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkCreditResult) UnmarshalBinary(b []byte) error {
	var res BulkCreditResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
