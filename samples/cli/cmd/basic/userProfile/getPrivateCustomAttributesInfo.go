// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userProfile

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPrivateCustomAttributesInfoCmd represents the GetPrivateCustomAttributesInfo command
var GetPrivateCustomAttributesInfoCmd = &cobra.Command{
	Use:   "getPrivateCustomAttributesInfo",
	Short: "Get private custom attributes info",
	Long:  `Get private custom attributes info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_profile.GetPrivateCustomAttributesInfoParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := userProfileService.GetPrivateCustomAttributesInfoShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPrivateCustomAttributesInfoCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPrivateCustomAttributesInfoCmd.MarkFlagRequired("namespace")
	GetPrivateCustomAttributesInfoCmd.Flags().String("userId", "", "User id")
	_ = GetPrivateCustomAttributesInfoCmd.MarkFlagRequired("userId")
}
