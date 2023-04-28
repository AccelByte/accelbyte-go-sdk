// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// Slide Slide
//
// swagger:model Slide.
type Slide struct {

	// alt
	Alt string `json:"alt,omitempty"`

	// preview url
	PreviewURL string `json:"previewUrl,omitempty"`

	// thumbnail url
	ThumbnailURL string `json:"thumbnailUrl,omitempty"`

	// slide type
	// Enum: ['image', 'video']
	Type string `json:"type,omitempty"`

	// url
	URL string `json:"url,omitempty"`

	// video source
	// Enum: ['generic', 'vimeo', 'youtube']
	VideoSource string `json:"videoSource,omitempty"`
}

// Validate validates this Slide
func (m *Slide) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var slideTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["IMAGE", "VIDEO"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		slideTypeTypePropEnum = append(slideTypeTypePropEnum, v)
	}
}

const (

	// SlideTypeIMAGE captures enum value "IMAGE"
	SlideTypeIMAGE string = "IMAGE"

	// SlideTypeVIDEO captures enum value "VIDEO"
	SlideTypeVIDEO string = "VIDEO"
)

// prop value enum
func (m *Slide) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, slideTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var slideTypeVideoSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["GENERIC", "VIMEO", "YOUTUBE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		slideTypeVideoSourcePropEnum = append(slideTypeVideoSourcePropEnum, v)
	}
}

const (

	// SlideVideoSourceGENERIC captures enum value "GENERIC"
	SlideVideoSourceGENERIC string = "GENERIC"

	// SlideVideoSourceVIMEO captures enum value "VIMEO"
	SlideVideoSourceVIMEO string = "VIMEO"

	// SlideVideoSourceYOUTUBE captures enum value "YOUTUBE"
	SlideVideoSourceYOUTUBE string = "YOUTUBE"
)

// prop value enum
func (m *Slide) validateVideoSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, slideTypeVideoSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *Slide) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Slide) UnmarshalBinary(b []byte) error {
	var res Slide
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
