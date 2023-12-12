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

// ModelsChannelTopicWithPaginationResponse Models channel topic with pagination response
//
// swagger:model Models channel topic with pagination response.
type ModelsChannelTopicWithPaginationResponse struct {

	// data
	// Required: true
	Data []*ModelsChannelTopicResponse `json:"data"`

	// paging
	// Required: true
	Paging *ModelsPagination `json:"paging"`

	// totaldata
	// Required: true
	// Format: int32
	TotalData *int32 `json:"totalData"`
}

// Validate validates this Models channel topic with pagination response
func (m *ModelsChannelTopicWithPaginationResponse) Validate(formats strfmt.Registry) error {
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

func (m *ModelsChannelTopicWithPaginationResponse) validateData(formats strfmt.Registry) error {

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

func (m *ModelsChannelTopicWithPaginationResponse) validatePaging(formats strfmt.Registry) error {

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

func (m *ModelsChannelTopicWithPaginationResponse) validateTotalData(formats strfmt.Registry) error {

	if err := validate.Required("totalData", "body", m.TotalData); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsChannelTopicWithPaginationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsChannelTopicWithPaginationResponse) UnmarshalBinary(b []byte) error {
	var res ModelsChannelTopicWithPaginationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
