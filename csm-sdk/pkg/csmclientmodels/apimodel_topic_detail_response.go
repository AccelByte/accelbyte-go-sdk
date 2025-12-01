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

// ApimodelTopicDetailResponse Apimodel topic detail response
//
// swagger:model Apimodel topic detail response.
type ApimodelTopicDetailResponse struct {

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

	// subscribers
	Subscribers []*ApimodelTopicSubscription `json:"subscribers,omitempty"`

	// topicarn
	// Required: true
	TopicArn *string `json:"topicArn"`

	// topicname
	// Required: true
	TopicName *string `json:"topicName"`
}

// Validate validates this Apimodel topic detail response
func (m *ApimodelTopicDetailResponse) Validate(formats strfmt.Registry) error {
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

func (m *ApimodelTopicDetailResponse) validateGameName(formats strfmt.Registry) error {

	if err := validate.Required("gameName", "body", m.GameName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicDetailResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicDetailResponse) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicDetailResponse) validateStudioName(formats strfmt.Registry) error {

	if err := validate.Required("studioName", "body", m.StudioName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicDetailResponse) validateTopicArn(formats strfmt.Registry) error {

	if err := validate.Required("topicArn", "body", m.TopicArn); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicDetailResponse) validateTopicName(formats strfmt.Registry) error {

	if err := validate.Required("topicName", "body", m.TopicName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelTopicDetailResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelTopicDetailResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelTopicDetailResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
