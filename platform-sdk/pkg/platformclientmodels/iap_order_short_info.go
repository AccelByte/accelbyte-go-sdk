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

// IAPOrderShortInfo IAP order short info
//
// swagger:model IAP order short info.
type IAPOrderShortInfo struct {

	// iaporderno
	IAPOrderNo string `json:"iapOrderNo,omitempty"`

	// status
	// Enum: ['FAILED', 'FULFILLED', 'PARTIAL_REVOKED', 'REVOKED', 'REVOKE_FAILED', 'VERIFIED']
	Status string `json:"status,omitempty"`
}

// Validate validates this IAP order short info
func (m *IAPOrderShortInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var iapOrderShortInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAILED", "FULFILLED", "PARTIAL_REVOKED", "REVOKED", "REVOKE_FAILED", "VERIFIED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		iapOrderShortInfoTypeStatusPropEnum = append(iapOrderShortInfoTypeStatusPropEnum, v)
	}
}

const (

	// IAPOrderShortInfoStatusFAILED captures enum value "FAILED"
	IAPOrderShortInfoStatusFAILED string = "FAILED"

	// IAPOrderShortInfoStatusFULFILLED captures enum value "FULFILLED"
	IAPOrderShortInfoStatusFULFILLED string = "FULFILLED"

	// IAPOrderShortInfoStatusPARTIALREVOKED captures enum value "PARTIAL_REVOKED"
	IAPOrderShortInfoStatusPARTIALREVOKED string = "PARTIAL_REVOKED"

	// IAPOrderShortInfoStatusREVOKED captures enum value "REVOKED"
	IAPOrderShortInfoStatusREVOKED string = "REVOKED"

	// IAPOrderShortInfoStatusREVOKEFAILED captures enum value "REVOKE_FAILED"
	IAPOrderShortInfoStatusREVOKEFAILED string = "REVOKE_FAILED"

	// IAPOrderShortInfoStatusVERIFIED captures enum value "VERIFIED"
	IAPOrderShortInfoStatusVERIFIED string = "VERIFIED"
)

// prop value enum
func (m *IAPOrderShortInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, iapOrderShortInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *IAPOrderShortInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *IAPOrderShortInfo) UnmarshalBinary(b []byte) error {
	var res IAPOrderShortInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
