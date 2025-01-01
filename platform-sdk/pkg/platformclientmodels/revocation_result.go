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

// RevocationResult Revocation result
//
// swagger:model Revocation result.
type RevocationResult struct {

	// credit revocations
	CreditRevocations []*CreditRevocation `json:"creditRevocations,omitempty"`

	// entitlement revocations
	EntitlementRevocations []*EntitlementRevocation `json:"entitlementRevocations,omitempty"`

	// revocation history id
	// Required: true
	ID *string `json:"id"`

	// true if request id is already processed and return the existing result
	IsReplayed bool `json:"isReplayed"`

	// item revocations
	ItemRevocations []*ItemRevocation `json:"itemRevocations,omitempty"`

	// revocation request id
	RequestID string `json:"requestId,omitempty"`

	// revocation status
	// Enum: ['FAIL', 'SUCCESS']
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Revocation result
func (m *RevocationResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RevocationResult) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

var revocationResultTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		revocationResultTypeStatusPropEnum = append(revocationResultTypeStatusPropEnum, v)
	}
}

const (

	// RevocationResultStatusFAIL captures enum value "FAIL"
	RevocationResultStatusFAIL string = "FAIL"

	// RevocationResultStatusSUCCESS captures enum value "SUCCESS"
	RevocationResultStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *RevocationResult) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, revocationResultTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RevocationResult) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RevocationResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevocationResult) UnmarshalBinary(b []byte) error {
	var res RevocationResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
