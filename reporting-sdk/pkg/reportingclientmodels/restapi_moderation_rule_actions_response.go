// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reportingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// RestapiModerationRuleActionsResponse Restapi moderation rule actions response
//
// swagger:model Restapi moderation rule actions response.
type RestapiModerationRuleActionsResponse struct {

	// Ban account action configuration
	BanAccount *RestapiBanAccountActionResponse `json:"banAccount,omitempty"`

	// Enable delete chat action
	DeleteChat bool `json:"deleteChat"`

	// custom service mod actions
	ExtensionActionIds []string `json:"extensionActionIds,omitempty"`

	// Enable hide content action
	HideContent bool `json:"hideContent"`
}

// Validate validates this Restapi moderation rule actions response
func (m *RestapiModerationRuleActionsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RestapiModerationRuleActionsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiModerationRuleActionsResponse) UnmarshalBinary(b []byte) error {
	var res RestapiModerationRuleActionsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
