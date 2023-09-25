// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIRegionsResponse Api regions response
//
// swagger:model Api regions response.
type APIRegionsResponse struct {

	// qosservers
	// Required: true
	QosServers []*APIQOSServer `json:"qosServers"`

	// regions
	// Required: true
	Regions []string `json:"regions"`
}

// Validate validates this Api regions response
func (m *APIRegionsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateQosServers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegions(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIRegionsResponse) validateQosServers(formats strfmt.Registry) error {

	if err := validate.Required("qosServers", "body", m.QosServers); err != nil {
		return err
	}

	for i := 0; i < len(m.QosServers); i++ {
		if swag.IsZero(m.QosServers[i]) { // not required
			continue
		}

		if m.QosServers[i] != nil {
			if err := m.QosServers[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("qosServers" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *APIRegionsResponse) validateRegions(formats strfmt.Registry) error {

	if err := validate.Required("regions", "body", m.Regions); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIRegionsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIRegionsResponse) UnmarshalBinary(b []byte) error {
	var res APIRegionsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
