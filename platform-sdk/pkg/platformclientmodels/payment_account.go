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

// PaymentAccount Payment account
//
// swagger:model Payment account.
type PaymentAccount struct {

	// Payment account id
	// Required: true
	ID *string `json:"id"`

	// Payment account name, generally mask credit card number
	// Required: true
	Name *string `json:"name"`

	// Payment account type
	// Enum: ['card', 'paypal']
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Payment account
func (m *PaymentAccount) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PaymentAccount) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *PaymentAccount) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

var paymentAccountTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CARD", "PAYPAL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentAccountTypeTypePropEnum = append(paymentAccountTypeTypePropEnum, v)
	}
}

const (

	// PaymentAccountTypeCARD captures enum value "CARD"
	PaymentAccountTypeCARD string = "CARD"

	// PaymentAccountTypePAYPAL captures enum value "PAYPAL"
	PaymentAccountTypePAYPAL string = "PAYPAL"
)

// prop value enum
func (m *PaymentAccount) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentAccountTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentAccount) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentAccount) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentAccount) UnmarshalBinary(b []byte) error {
	var res PaymentAccount
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
