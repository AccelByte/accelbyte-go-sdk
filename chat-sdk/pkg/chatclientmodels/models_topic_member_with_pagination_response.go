// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsTopicMemberWithPaginationResponse Models topic member with pagination response
//
// swagger:model Models topic member with pagination response.
type ModelsTopicMemberWithPaginationResponse struct {

	// data
	// Required: true
	Data []*ModelsTopicMemberResponse `json:"data"`

	// paging
	// Required: true
	Paging *ModelsPagination `json:"paging"`

	// totaldata
	// Required: true
	// Format: int32
	TotalData *int32 `json:"totalData"`
}

// Validate validates this Models topic member with pagination response
func (m *ModelsTopicMemberWithPaginationResponse) Validate(formats strfmt.Registry) error {
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

func (m *ModelsTopicMemberWithPaginationResponse) validateData(formats strfmt.Registry) error {

	if err := validate.Required("data", "body", m.Data); err != nil {
		return err
	}

	for i := 0; i < len(m.Data); i++ {
		if swag.IsZero(m.Data[i]) { // not required
			continue
		}

		if m.Data[i] != nil {
			if err := m.Data[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("data" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsTopicMemberWithPaginationResponse) validatePaging(formats strfmt.Registry) error {

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

func (m *ModelsTopicMemberWithPaginationResponse) validateTotalData(formats strfmt.Registry) error {

	if err := validate.Required("totalData", "body", m.TotalData); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsTopicMemberWithPaginationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsTopicMemberWithPaginationResponse) UnmarshalBinary(b []byte) error {
	var res ModelsTopicMemberWithPaginationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
