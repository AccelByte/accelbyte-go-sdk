// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package playFeatureFlag

import (
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/play_feature_flag"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetPlayFeatureFlagCmd represents the AdminGetPlayFeatureFlag command
var AdminGetPlayFeatureFlagCmd = &cobra.Command{
	Use:   "adminGetPlayFeatureFlag",
	Short: "Admin get play feature flag",
	Long:  `Admin get play feature flag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playFeatureFlagService := &match2.PlayFeatureFlagService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &play_feature_flag.AdminGetPlayFeatureFlagParams{
			Namespace: namespace,
		}
		ok, errOK := playFeatureFlagService.AdminGetPlayFeatureFlagShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetPlayFeatureFlagCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlayFeatureFlagCmd.MarkFlagRequired("namespace")
}
