// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getCustomAttributesInfoCmd represents the getCustomAttributesInfo command
var getCustomAttributesInfoCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userProfileService.GetCustomAttributesInfo(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getCustomAttributesInfoCmd)
	getCustomAttributesInfoCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getCustomAttributesInfoCmd.MarkFlagRequired("namespace")
	getCustomAttributesInfoCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getCustomAttributesInfoCmd.MarkFlagRequired("userId")
}
