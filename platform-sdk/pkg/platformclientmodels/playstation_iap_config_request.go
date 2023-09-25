// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PlaystationIAPConfigRequest Playstation IAP config request
//
// swagger:model Playstation IAP config request.
type PlaystationIAPConfigRequest struct {

	// back office server clientId
	BackOfficeServerClientID string `json:"backOfficeServerClientId,omitempty"`

	// back office server client secret
	BackOfficeServerClientSecret string `json:"backOfficeServerClientSecret,omitempty"`

	// enable PSN stream event job, will enable stream event job to sync PSN refund chargeback etc event if it's true
	EnableStreamJob bool `json:"enableStreamJob"`

	// environment
	// Required: true
	Environment *string `json:"environment"`

	// stream name
	StreamName string `json:"streamName,omitempty"`

	// stream partner name
	StreamPartnerName string `json:"streamPartnerName,omitempty"`
}

// Validate validates this Playstation IAP config request
func (m *PlaystationIAPConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnvironment(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PlaystationIAPConfigRequest) validateEnvironment(formats strfmt.Registry) error {

	if err := validate.Required("environment", "body", m.Environment); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PlaystationIAPConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlaystationIAPConfigRequest) UnmarshalBinary(b []byte) error {
	var res PlaystationIAPConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
