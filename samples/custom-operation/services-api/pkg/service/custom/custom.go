// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package custom

import (
	custom_sdk "custom-operation/custom-sdk"
)

// CustomService wraps the client on top of the operation
type CustomService struct {
	Client *custom_sdk.CustomizedService
}

func (c *CustomService) CustomSearch(input *custom_sdk.CustomSearchParams) (*custom_sdk.Ok, error) {
	ok, err := c.Client.Customize.CustomSearch(input)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
