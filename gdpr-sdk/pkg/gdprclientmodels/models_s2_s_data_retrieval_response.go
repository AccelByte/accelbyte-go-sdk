// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gdprclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsS2SDataRetrievalResponse Models S2S data retrieval response
//
// swagger:model Models S2S data retrieval response.
type ModelsS2SDataRetrievalResponse struct {

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// requestdate
	// Required: true
	// Format: date-time
	RequestDate strfmt.DateTime `json:"requestDate"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models S2S data retrieval response
func (m *ModelsS2SDataRetrievalResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestDate(formats); err != nil {
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

func (m *ModelsS2SDataRetrievalResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsS2SDataRetrievalResponse) validateRequestDate(formats strfmt.Registry) error {

	if err := validate.Required("requestDate", "body", strfmt.DateTime(m.RequestDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("requestDate", "body", "date-time", m.RequestDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsS2SDataRetrievalResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsS2SDataRetrievalResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsS2SDataRetrievalResponse) UnmarshalBinary(b []byte) error {
	var res ModelsS2SDataRetrievalResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
