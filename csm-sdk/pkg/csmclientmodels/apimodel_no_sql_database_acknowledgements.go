// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelNoSQLDatabaseAcknowledgements Apimodel no SQL database acknowledgements
//
// swagger:model Apimodel no SQL database acknowledgements.
type ApimodelNoSQLDatabaseAcknowledgements struct {

	// acceptnosqlsecurecredentialhandling
	// Required: true
	AcceptNosqlSecureCredentialHandling *bool `json:"acceptNosqlSecureCredentialHandling"`
}

// Validate validates this Apimodel no SQL database acknowledgements
func (m *ApimodelNoSQLDatabaseAcknowledgements) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAcceptNosqlSecureCredentialHandling(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelNoSQLDatabaseAcknowledgements) validateAcceptNosqlSecureCredentialHandling(formats strfmt.Registry) error {

	if err := validate.Required("acceptNosqlSecureCredentialHandling", "body", m.AcceptNosqlSecureCredentialHandling); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelNoSQLDatabaseAcknowledgements) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelNoSQLDatabaseAcknowledgements) UnmarshalBinary(b []byte) error {
	var res ApimodelNoSQLDatabaseAcknowledgements
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
