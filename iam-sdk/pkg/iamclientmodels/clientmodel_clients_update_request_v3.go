// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ClientmodelClientsUpdateRequestV3 Clientmodel clients update request V3
//
// swagger:model Clientmodel clients update request V3.
type ClientmodelClientsUpdateRequestV3 struct {

	// required and max count is 50
	// Required: true
	ClientIds []string `json:"clientIds"`

	// clientupdaterequest
	// Required: true
	ClientUpdateRequest *ClientmodelClientUpdateV3Request `json:"clientUpdateRequest"`
}

// Validate validates this Clientmodel clients update request V3
func (m *ClientmodelClientsUpdateRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientIds(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClientUpdateRequest(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ClientmodelClientsUpdateRequestV3) validateClientIds(formats strfmt.Registry) error {

	if err := validate.Required("clientIds", "body", m.ClientIds); err != nil {
		return err
	}

	return nil
}

func (m *ClientmodelClientsUpdateRequestV3) validateClientUpdateRequest(formats strfmt.Registry) error {

	if err := validate.Required("clientUpdateRequest", "body", m.ClientUpdateRequest); err != nil {
		return err
	}

	if m.ClientUpdateRequest != nil {
		if err := m.ClientUpdateRequest.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("clientUpdateRequest")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelClientsUpdateRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelClientsUpdateRequestV3) UnmarshalBinary(b []byte) error {
	var res ClientmodelClientsUpdateRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
