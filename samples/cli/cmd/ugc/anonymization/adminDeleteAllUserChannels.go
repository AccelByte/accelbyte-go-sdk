// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/anonymization"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteAllUserChannelsCmd represents the AdminDeleteAllUserChannels command
var AdminDeleteAllUserChannelsCmd = &cobra.Command{
	Use:   "adminDeleteAllUserChannels",
	Short: "Admin delete all user channels",
	Long:  `Admin delete all user channels`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &ugc.AnonymizationService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AdminDeleteAllUserChannelsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := anonymizationService.AdminDeleteAllUserChannelsShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteAllUserChannelsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteAllUserChannelsCmd.MarkFlagRequired("namespace")
	AdminDeleteAllUserChannelsCmd.Flags().String("userId", "", "User id")
	_ = AdminDeleteAllUserChannelsCmd.MarkFlagRequired("userId")
}
