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

// AdminDeletePlayFeatureFlagCmd represents the AdminDeletePlayFeatureFlag command
var AdminDeletePlayFeatureFlagCmd = &cobra.Command{
	Use:   "adminDeletePlayFeatureFlag",
	Short: "Admin delete play feature flag",
	Long:  `Admin delete play feature flag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playFeatureFlagService := &match2.PlayFeatureFlagService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &play_feature_flag.AdminDeletePlayFeatureFlagParams{
			Namespace: namespace,
		}
		errNoContent := playFeatureFlagService.AdminDeletePlayFeatureFlagShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeletePlayFeatureFlagCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeletePlayFeatureFlagCmd.MarkFlagRequired("namespace")
}
