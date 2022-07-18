// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package bansDeprecated

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans_deprecated"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetListBanReasonCmd represents the GetListBanReason command
var GetListBanReasonCmd = &cobra.Command{
	Use:   "getListBanReason",
	Short: "Get list ban reason",
	Long:  `Get list ban reason`,
	RunE: func(cmd *cobra.Command, args []string) error {
		bansDeprecatedService := &iam.BansDeprecatedService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &bans_deprecated.GetListBanReasonParams{}
		ok, err := bansDeprecatedService.GetListBanReasonShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
}
