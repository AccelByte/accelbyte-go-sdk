// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package groupclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMemberRequestResponseV1 Models member request response V1
//
// swagger:model Models member request response V1.
type ModelsMemberRequestResponseV1 struct {

	// groupid
	// Required: true
	GroupID *string `json:"groupId"`

	// requesttype
	// Required: true
	RequestType *string `json:"requestType"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models member request response V1
func (m *ModelsMemberRequestResponseV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGroupID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMemberRequestResponseV1) validateGroupID(formats strfmt.Registry) error {

	if err := validate.Required("groupId", "body", m.GroupID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMemberRequestResponseV1) validateRequestType(formats strfmt.Registry) error {

	if err := validate.Required("requestType", "body", m.RequestType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMemberRequestResponseV1) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMemberRequestResponseV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMemberRequestResponseV1) UnmarshalBinary(b []byte) error {
	var res ModelsMemberRequestResponseV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
