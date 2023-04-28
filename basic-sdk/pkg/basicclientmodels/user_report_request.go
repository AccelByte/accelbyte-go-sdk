// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// UserReportRequest User report request
//
// swagger:model User report request.
type UserReportRequest struct {

	// category
	// Required: true
	Category *string `json:"category"`

	// description
	Description string `json:"description,omitempty"`

	// gameSessionId
	GameSessionID string `json:"gameSessionId,omitempty"`

	// subcategory, default: general
	Subcategory string `json:"subcategory,omitempty"`

	// reportee user id
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this User report request
func (m *UserReportRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCategory(formats); err != nil {
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

func (m *UserReportRequest) validateCategory(formats strfmt.Registry) error {

	if err := validate.Required("category", "body", m.Category); err != nil {
		return err
	}

	return nil
}

func (m *UserReportRequest) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *UserReportRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserReportRequest) UnmarshalBinary(b []byte) error {
	var res UserReportRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
