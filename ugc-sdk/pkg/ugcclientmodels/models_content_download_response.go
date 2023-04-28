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

// ModelsContentDownloadResponse Models content download response
//
// swagger:model Models content download response.
type ModelsContentDownloadResponse struct {

	// channelid
	// Required: true
	ChannelID *string `json:"channelId"`

	// createdtime
	// Required: true
	CreatedTime *string `json:"createdTime"`

	// creatorfollowstate
	// Required: true
	CreatorFollowState *ModelsCreatorFollowState `json:"creatorFollowState"`

	// Creator Name is deprecated
	// Required: true
	CreatorName *string `json:"creatorName"`

	// customattributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// downloadcount
	// Required: true
	// Format: int32
	DownloadCount *int32 `json:"downloadCount"`

	// fileextension
	// Required: true
	FileExtension *string `json:"fileExtension"`

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

	// payload
	Payload string `json:"payload,omitempty"`

	// payloadurl
	PayloadURL []*ModelsPayloadURL `json:"payloadURL,omitempty"`

	// previewurl
	PreviewURL []*ModelsPreviewURL `json:"previewURL,omitempty"`

	// screenshots
	Screenshots []*ModelsScreenshotResponse `json:"screenshots,omitempty"`

	// sharecode
	// Required: true
	ShareCode *string `json:"shareCode"`

	// subtype
	// Required: true
	SubType *string `json:"subType"`

	// tags
	// Required: true
	Tags []string `json:"tags"`

	// type
	// Required: true
	Type *string `json:"type"`

	// updatedtime
	// Required: true
	UpdatedTime *string `json:"updatedTime"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models content download response
func (m *ModelsContentDownloadResponse) Validate(formats strfmt.Registry) error {
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
	if err := m.validateCreatorName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDownloadCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFileExtension(formats); err != nil {
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
	if err := m.validateSubType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTags(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedTime(formats); err != nil {
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

func (m *ModelsContentDownloadResponse) validateChannelID(formats strfmt.Registry) error {

	if err := validate.Required("channelId", "body", m.ChannelID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateCreatedTime(formats strfmt.Registry) error {

	if err := validate.Required("createdTime", "body", m.CreatedTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateCreatorFollowState(formats strfmt.Registry) error {

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

func (m *ModelsContentDownloadResponse) validateCreatorName(formats strfmt.Registry) error {

	if err := validate.Required("creatorName", "body", m.CreatorName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateDownloadCount(formats strfmt.Registry) error {

	if err := validate.Required("downloadCount", "body", m.DownloadCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateFileExtension(formats strfmt.Registry) error {

	if err := validate.Required("fileExtension", "body", m.FileExtension); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateIsHidden(formats strfmt.Registry) error {

	if err := validate.Required("isHidden", "body", m.IsHidden); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateIsOfficial(formats strfmt.Registry) error {

	if err := validate.Required("isOfficial", "body", m.IsOfficial); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateLikeCount(formats strfmt.Registry) error {

	if err := validate.Required("likeCount", "body", m.LikeCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateShareCode(formats strfmt.Registry) error {

	if err := validate.Required("shareCode", "body", m.ShareCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateSubType(formats strfmt.Registry) error {

	if err := validate.Required("subType", "body", m.SubType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateUpdatedTime(formats strfmt.Registry) error {

	if err := validate.Required("updatedTime", "body", m.UpdatedTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsContentDownloadResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsContentDownloadResponse) UnmarshalBinary(b []byte) error {
	var res ModelsContentDownloadResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
