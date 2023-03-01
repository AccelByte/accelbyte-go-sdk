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

// GetMyPrivateCustomAttributesInfoCmd represents the GetMyPrivateCustomAttributesInfo command
var GetMyPrivateCustomAttributesInfoCmd = &cobra.Command{
	Use:   "getMyPrivateCustomAttributesInfo",
	Short: "Get my private custom attributes info",
	Long:  `Get my private custom attributes info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &user_profile.GetMyPrivateCustomAttributesInfoParams{
			Namespace: namespace,
		}
		ok, errOK := userProfileService.GetMyPrivateCustomAttributesInfoShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetMyPrivateCustomAttributesInfoCmd.Flags().String("namespace", "", "Namespace")
	_ = GetMyPrivateCustomAttributesInfoCmd.MarkFlagRequired("namespace")
}
