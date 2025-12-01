// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelTopicResponse Apimodel topic response
//
// swagger:model Apimodel topic response.
type ApimodelTopicResponse struct {

	// description
	Description string `json:"description,omitempty"`

	// gamename
	// Required: true
	GameName *string `json:"gameName"`

	// id
	// Required: true
	ID *string `json:"id"`

	// region
	// Required: true
	Region *string `json:"region"`

	// studioname
	// Required: true
	StudioName *string `json:"studioName"`

	// topicarn
	// Required: true
	TopicArn *string `json:"topicArn"`

	// topicname
	// Required: true
	TopicName *string `json:"topicName"`
}

// Validate validates this Apimodel topic response
func (m *ApimodelTopicResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGameName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStudioName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTopicArn(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTopicName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelTopicResponse) validateGameName(formats strfmt.Registry) error {

	if err := validate.Required("gameName", "body", m.GameName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicResponse) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicResponse) validateStudioName(formats strfmt.Registry) error {

	if err := validate.Required("studioName", "body", m.StudioName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicResponse) validateTopicArn(formats strfmt.Registry) error {

	if err := validate.Required("topicArn", "body", m.TopicArn); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicResponse) validateTopicName(formats strfmt.Registry) error {

	if err := validate.Required("topicName", "body", m.TopicName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelTopicResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelTopicResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelTopicResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
