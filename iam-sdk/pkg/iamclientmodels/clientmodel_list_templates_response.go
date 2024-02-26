// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ClientmodelListTemplatesResponse Clientmodel list templates response
//
// swagger:model Clientmodel list templates response.
type ClientmodelListTemplatesResponse struct {

	// clienttemplates
	// Required: true
	ClientTemplates []*ClientmodelClientTemplate `json:"clientTemplates"`
}

// Validate validates this Clientmodel list templates response
func (m *ClientmodelListTemplatesResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientTemplates(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ClientmodelListTemplatesResponse) validateClientTemplates(formats strfmt.Registry) error {

	if err := validate.Required("clientTemplates", "body", m.ClientTemplates); err != nil {
		return err
	}

	for i := 0; i < len(m.ClientTemplates); i++ {
		if swag.IsZero(m.ClientTemplates[i]) { // not required
			continue
		}

		if m.ClientTemplates[i] != nil {
			if err := m.ClientTemplates[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("clientTemplates" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClientmodelListTemplatesResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClientmodelListTemplatesResponse) UnmarshalBinary(b []byte) error {
	var res ClientmodelListTemplatesResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
