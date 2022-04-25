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

// GetCustomAttributesInfoCmd represents the GetCustomAttributesInfo command
var GetCustomAttributesInfoCmd = &cobra.Command{
	Use:   "getCustomAttributesInfo",
	Short: "Get custom attributes info",
	Long:  `Get custom attributes info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_profile.GetCustomAttributesInfoParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := userProfileService.GetCustomAttributesInfoShort(input, nil)
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
	GetCustomAttributesInfoCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetCustomAttributesInfoCmd.MarkFlagRequired("namespace")
	GetCustomAttributesInfoCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetCustomAttributesInfoCmd.MarkFlagRequired("userId")
}
