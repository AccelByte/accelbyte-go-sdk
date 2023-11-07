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

// ModelsContentDownloadResponseV2 Models content download response V2
//
// swagger:model Models content download response V2.
type ModelsContentDownloadResponseV2 struct {

	// channelid
	// Required: true
	ChannelID *string `json:"channelId"`

	// createdtime
	// Required: true
	CreatedTime *string `json:"createdTime"`

	// creatorfollowstate
	// Required: true
	CreatorFollowState *ModelsCreatorFollowState `json:"creatorFollowState"`

	// customattributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// downloadcount
	// Required: true
	// Format: int32
	DownloadCount *int32 `json:"downloadCount"`

	// fileextension
	FileExtension string `json:"fileExtension,omitempty"`

	// groups
	Groups []string `json:"groups,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// ishidden
	// Required: true
	IsHidden *bool `json:"isHidden"`

	// isofficial
	// Required: true
	IsOfficial *bool `json:"isOfficial"`

	// likecount
	// Required: true
	// Format: int32
	LikeCount *int32 `json:"likeCount"`

	// likestate
	LikeState *ModelsLikeState `json:"likeState,omitempty"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// payloadurl
	PayloadURL []*ModelsPayloadURL `json:"payloadURL,omitempty"`

	// screenshots
	Screenshots []*ModelsScreenshotResponse `json:"screenshots,omitempty"`

	// sharecode
	// Required: true
	ShareCode *string `json:"shareCode"`

	// subtype
	SubType string `json:"subType,omitempty"`

	// tags
	// Required: true
	Tags []string `json:"tags"`

	// type
	Type string `json:"type,omitempty"`

	// updatedtime
	UpdatedTime string `json:"updatedTime,omitempty"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models content download response V2
func (m *ModelsContentDownloadResponseV2) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChannelID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatorFollowState(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDownloadCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsHidden(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsOfficial(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLikeCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateShareCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTags(formats); err != nil {
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

func (m *ModelsContentDownloadResponseV2) validateChannelID(formats strfmt.Registry) error {

	if err := validate.Required("channelId", "body", m.ChannelID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponseV2) validateCreatedTime(formats strfmt.Registry) error {

	if err := validate.Required("createdTime", "body", m.CreatedTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponseV2) validateCreatorFollowState(formats strfmt.Registry) error {

	if err := validate.Required("creatorFollowState", "body", m.CreatorFollowState); err != nil {
		return err
	}

	if m.CreatorFollowState != nil {
		if err := m.CreatorFollowState.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("creatorFollowState")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsContentDownloadResponseV2) validateDownloadCount(formats strfmt.Registry) error {

	if err := validate.Required("downloadCount", "body", m.DownloadCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponseV2) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponseV2) validateIsHidden(formats strfmt.Registry) error {

	if err := validate.Required("isHidden", "body", m.IsHidden); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponseV2) validateIsOfficial(formats strfmt.Registry) error {

	if err := validate.Required("isOfficial", "body", m.IsOfficial); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponseV2) validateLikeCount(formats strfmt.Registry) error {

	if err := validate.Required("likeCount", "body", m.LikeCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponseV2) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponseV2) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponseV2) validateShareCode(formats strfmt.Registry) error {

	if err := validate.Required("shareCode", "body", m.ShareCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponseV2) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponseV2) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsContentDownloadResponseV2) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsContentDownloadResponseV2) UnmarshalBinary(b []byte) error {
	var res ModelsContentDownloadResponseV2
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
