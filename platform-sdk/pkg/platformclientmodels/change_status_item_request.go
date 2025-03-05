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

// ChangeStatusItemRequest Change status item request
//
// swagger:model Change status item request.
type ChangeStatusItemRequest struct {

	// feature reference to check
	// Unique: true
	// Enum: ['CAMPAIGN', 'CATALOG', 'DLC', 'ENTITLEMENT', 'IAP', 'REWARD']
	FeaturesToCheck []string `json:"featuresToCheck"`
}

// Validate validates this Change status item request
func (m *ChangeStatusItemRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var changeStatusItemRequestTypeFeaturesToCheckItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CAMPAIGN", "CATALOG", "DLC", "ENTITLEMENT", "IAP", "REWARD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		changeStatusItemRequestTypeFeaturesToCheckItemsEnum = append(changeStatusItemRequestTypeFeaturesToCheckItemsEnum, v)
	}
}

const (

	// ChangeStatusItemRequestFeaturesToCheckCAMPAIGN captures enum value "CAMPAIGN"
	ChangeStatusItemRequestFeaturesToCheckCAMPAIGN string = "CAMPAIGN"

	// ChangeStatusItemRequestFeaturesToCheckCATALOG captures enum value "CATALOG"
	ChangeStatusItemRequestFeaturesToCheckCATALOG string = "CATALOG"

	// ChangeStatusItemRequestFeaturesToCheckDLC captures enum value "DLC"
	ChangeStatusItemRequestFeaturesToCheckDLC string = "DLC"

	// ChangeStatusItemRequestFeaturesToCheckENTITLEMENT captures enum value "ENTITLEMENT"
	ChangeStatusItemRequestFeaturesToCheckENTITLEMENT string = "ENTITLEMENT"

	// ChangeStatusItemRequestFeaturesToCheckIAP captures enum value "IAP"
	ChangeStatusItemRequestFeaturesToCheckIAP string = "IAP"

	// ChangeStatusItemRequestFeaturesToCheckREWARD captures enum value "REWARD"
	ChangeStatusItemRequestFeaturesToCheckREWARD string = "REWARD"
)

func (m *ChangeStatusItemRequest) validateFeaturesToCheckItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, changeStatusItemRequestTypeFeaturesToCheckItemsEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ChangeStatusItemRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ChangeStatusItemRequest) UnmarshalBinary(b []byte) error {
	var res ChangeStatusItemRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
