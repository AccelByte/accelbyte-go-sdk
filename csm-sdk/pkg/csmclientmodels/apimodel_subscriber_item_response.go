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

// ApimodelSubscriberItemResponse Apimodel subscriber item response
//
// swagger:model Apimodel subscriber item response.
type ApimodelSubscriberItemResponse struct {

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// emailaddress
	EmailAddress string `json:"emailAddress,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// notificationtype
	NotificationType string `json:"notificationType,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Apimodel subscriber item response
func (m *ApimodelSubscriberItemResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelSubscriberItemResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelSubscriberItemResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelSubscriberItemResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelSubscriberItemResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
