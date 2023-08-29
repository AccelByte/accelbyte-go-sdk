// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inventoryclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsMoveItemsResp Apimodels move items resp
//
// swagger:model Apimodels move items resp.
type ApimodelsMoveItemsResp struct {

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// dstinventoryid
	// Required: true
	DstInventoryID *string `json:"dstInventoryId"`

	// items
	// Required: true
	Items []*ApimodelsTradeItemResp `json:"items"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// srcinventoryid
	// Required: true
	SrcInventoryID *string `json:"srcInventoryId"`
}

// Validate validates this Apimodels move items resp
func (m *ApimodelsMoveItemsResp) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDstInventoryID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItems(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSrcInventoryID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsMoveItemsResp) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsMoveItemsResp) validateDstInventoryID(formats strfmt.Registry) error {

	if err := validate.Required("dstInventoryId", "body", m.DstInventoryID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsMoveItemsResp) validateItems(formats strfmt.Registry) error {

	if err := validate.Required("items", "body", m.Items); err != nil {
		return err
	}

	for i := 0; i < len(m.Items); i++ {
		if swag.IsZero(m.Items[i]) { // not required
			continue
		}

		if m.Items[i] != nil {
			if err := m.Items[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("items" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelsMoveItemsResp) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsMoveItemsResp) validateSrcInventoryID(formats strfmt.Registry) error {

	if err := validate.Required("srcInventoryId", "body", m.SrcInventoryID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsMoveItemsResp) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsMoveItemsResp) UnmarshalBinary(b []byte) error {
	var res ApimodelsMoveItemsResp
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
