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

// ApimodelKeyValueCredentialAcknowledgements Apimodel key value credential acknowledgements
//
// swagger:model Apimodel key value credential acknowledgements.
type ApimodelKeyValueCredentialAcknowledgements struct {

	// acceptkeyvaluesecurecredentialhandling
	// Required: true
	AcceptKeyValueSecureCredentialHandling *bool `json:"acceptKeyValueSecureCredentialHandling"`
}

// Validate validates this Apimodel key value credential acknowledgements
func (m *ApimodelKeyValueCredentialAcknowledgements) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAcceptKeyValueSecureCredentialHandling(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelKeyValueCredentialAcknowledgements) validateAcceptKeyValueSecureCredentialHandling(formats strfmt.Registry) error {

	if err := validate.Required("acceptKeyValueSecureCredentialHandling", "body", m.AcceptKeyValueSecureCredentialHandling); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelKeyValueCredentialAcknowledgements) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelKeyValueCredentialAcknowledgements) UnmarshalBinary(b []byte) error {
	var res ApimodelKeyValueCredentialAcknowledgements
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
