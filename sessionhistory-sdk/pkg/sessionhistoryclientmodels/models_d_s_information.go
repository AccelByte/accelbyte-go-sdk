// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsDSInformation Models DS information
//
// swagger:model Models DS information.
type ModelsDSInformation struct {

	// requestedat
	RequestedAt string `json:"RequestedAt,omitempty"`

	// server
	Server *ModelsGameServer `json:"Server,omitempty"`

	// status
	Status string `json:"Status,omitempty"`

	// statusv2
	StatusV2 string `json:"StatusV2,omitempty"`
}

// Validate validates this Models DS information
func (m *ModelsDSInformation) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDSInformation) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDSInformation) UnmarshalBinary(b []byte) error {
	var res ModelsDSInformation
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
