// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ItemPurchaseConditionValidateRequest item purchase condition validate request
//
// swagger:model ItemPurchaseConditionValidateRequest
type ItemPurchaseConditionValidateRequest struct {

	// item ids
	ItemIds []string `json:"itemIds"`
}

// Validate validates this item purchase condition validate request
func (m *ItemPurchaseConditionValidateRequest) Validate(formats strfmt.Registry) error {
	return nil
}

// MarshalBinary interface implementation
func (m *ItemPurchaseConditionValidateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemPurchaseConditionValidateRequest) UnmarshalBinary(b []byte) error {
	var res ItemPurchaseConditionValidateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}