// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsContentLikersResponse Models content likers response
//
// swagger:model Models content likers response.
type ModelsContentLikersResponse struct {

	// contentid
	// Required: true
	ContentID *string `json:"contentId"`

	// createdtime
	// Required: true
	// Format: date-time
	CreatedTime strfmt.DateTime `json:"createdTime"`

	// likedby
	// Required: true
	LikedBy *string `json:"likedBy"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`
}

// Validate validates this Models content likers response
func (m *ModelsContentLikersResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateContentID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLikedBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsContentLikersResponse) validateContentID(formats strfmt.Registry) error {

	if err := validate.Required("contentId", "body", m.ContentID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentLikersResponse) validateCreatedTime(formats strfmt.Registry) error {

	if err := validate.Required("createdTime", "body", strfmt.DateTime(m.CreatedTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdTime", "body", "date-time", m.CreatedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentLikersResponse) validateLikedBy(formats strfmt.Registry) error {

	if err := validate.Required("likedBy", "body", m.LikedBy); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentLikersResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsContentLikersResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsContentLikersResponse) UnmarshalBinary(b []byte) error {
	var res ModelsContentLikersResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
