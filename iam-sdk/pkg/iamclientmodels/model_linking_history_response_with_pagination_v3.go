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

// ModelLinkingHistoryResponseWithPaginationV3 Model linking history response with pagination V3
//
// swagger:model Model linking history response with pagination V3.
type ModelLinkingHistoryResponseWithPaginationV3 struct {

	// publisher user id which linked to this platform account
	// Required: true
	Data []string `json:"data"`

	// paging
	// Required: true
	Paging *AccountcommonPaginationV3 `json:"paging"`

	// totaldata
	// Required: true
	// Format: int32
	TotalData *int32 `json:"totalData"`
}

// Validate validates this Model linking history response with pagination V3
func (m *ModelLinkingHistoryResponseWithPaginationV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateData(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePaging(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalData(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelLinkingHistoryResponseWithPaginationV3) validateData(formats strfmt.Registry) error {

	if err := validate.Required("data", "body", m.Data); err != nil {
		return err
	}

	return nil
}

func (m *ModelLinkingHistoryResponseWithPaginationV3) validatePaging(formats strfmt.Registry) error {

	if err := validate.Required("paging", "body", m.Paging); err != nil {
		return err
	}

	if m.Paging != nil {
		if err := m.Paging.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("paging")
			}
			return err
		}
	}

	return nil
}

func (m *ModelLinkingHistoryResponseWithPaginationV3) validateTotalData(formats strfmt.Registry) error {

	if err := validate.Required("totalData", "body", m.TotalData); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelLinkingHistoryResponseWithPaginationV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelLinkingHistoryResponseWithPaginationV3) UnmarshalBinary(b []byte) error {
	var res ModelLinkingHistoryResponseWithPaginationV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
