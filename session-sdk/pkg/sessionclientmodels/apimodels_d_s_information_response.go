// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsDSInformationResponse Apimodels DS information response
//
// swagger:model Apimodels DS information response.
type ApimodelsDSInformationResponse struct {

	// requestedat
	// Required: true
	RequestedAt *string `json:"RequestedAt"`

	// server
	Server *ModelsGameServer `json:"Server,omitempty"`

	// status
	// Required: true
	Status *string `json:"Status"`

	// statusv2
	// Required: true
	StatusV2 *string `json:"StatusV2"`
}

// Validate validates this Apimodels DS information response
func (m *ApimodelsDSInformationResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRequestedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatusV2(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsDSInformationResponse) validateRequestedAt(formats strfmt.Registry) error {

	if err := validate.Required("RequestedAt", "body", m.RequestedAt); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsDSInformationResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("Status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsDSInformationResponse) validateStatusV2(formats strfmt.Registry) error {

	if err := validate.Required("StatusV2", "body", m.StatusV2); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsDSInformationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsDSInformationResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsDSInformationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
