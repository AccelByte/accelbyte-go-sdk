// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelBulkSubscribeRequest Apimodel bulk subscribe request
//
// swagger:model Apimodel bulk subscribe request.
type ApimodelBulkSubscribeRequest struct {

	// subscribers
	// Required: true
	Subscribers []*ApimodelBulkSubscribeItem `json:"subscribers"`
}

// Validate validates this Apimodel bulk subscribe request
func (m *ApimodelBulkSubscribeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSubscribers(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelBulkSubscribeRequest) validateSubscribers(formats strfmt.Registry) error {

	if err := validate.Required("subscribers", "body", m.Subscribers); err != nil {
		return err
	}

	for i := 0; i < len(m.Subscribers); i++ {
		if swag.IsZero(m.Subscribers[i]) { // not required
			continue
		}

		if m.Subscribers[i] != nil {
			if err := m.Subscribers[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("subscribers" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelBulkSubscribeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelBulkSubscribeRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelBulkSubscribeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
