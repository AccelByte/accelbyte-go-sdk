// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIPagingInfo Api paging info
//
// swagger:model Api paging info.
type APIPagingInfo struct {

	// currentpage
	// Required: true
	// Format: int32
	CurrentPage *int32 `json:"currentPage"`

	// hasnext
	// Required: true
	HasNext *bool `json:"hasNext"`

	// haspages
	// Required: true
	HasPages *bool `json:"hasPages"`

	// hasprev
	// Required: true
	HasPrev *bool `json:"hasPrev"`

	// next
	// Required: true
	Next *string `json:"next"`

	// pagenums
	// Required: true
	// Format: int32
	PageNums []int32 `json:"pageNums"`

	// previous
	// Required: true
	Previous *string `json:"previous"`

	// total
	// Required: true
	// Format: int32
	Total *int32 `json:"total"`
}

// Validate validates this Api paging info
func (m *APIPagingInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrentPage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHasNext(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHasPages(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHasPrev(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNext(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePageNums(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePrevious(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotal(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIPagingInfo) validateCurrentPage(formats strfmt.Registry) error {

	if err := validate.Required("currentPage", "body", m.CurrentPage); err != nil {
		return err
	}

	return nil
}

func (m *APIPagingInfo) validateHasNext(formats strfmt.Registry) error {

	if err := validate.Required("hasNext", "body", m.HasNext); err != nil {
		return err
	}

	return nil
}

func (m *APIPagingInfo) validateHasPages(formats strfmt.Registry) error {

	if err := validate.Required("hasPages", "body", m.HasPages); err != nil {
		return err
	}

	return nil
}

func (m *APIPagingInfo) validateHasPrev(formats strfmt.Registry) error {

	if err := validate.Required("hasPrev", "body", m.HasPrev); err != nil {
		return err
	}

	return nil
}

func (m *APIPagingInfo) validateNext(formats strfmt.Registry) error {

	if err := validate.Required("next", "body", m.Next); err != nil {
		return err
	}

	return nil
}

func (m *APIPagingInfo) validatePageNums(formats strfmt.Registry) error {

	if err := validate.Required("pageNums", "body", m.PageNums); err != nil {
		return err
	}

	return nil
}

func (m *APIPagingInfo) validatePrevious(formats strfmt.Registry) error {

	if err := validate.Required("previous", "body", m.Previous); err != nil {
		return err
	}

	return nil
}

func (m *APIPagingInfo) validateTotal(formats strfmt.Registry) error {

	if err := validate.Required("total", "body", m.Total); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIPagingInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIPagingInfo) UnmarshalBinary(b []byte) error {
	var res APIPagingInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
