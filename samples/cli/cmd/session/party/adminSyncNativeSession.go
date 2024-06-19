// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/party"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminSyncNativeSessionCmd represents the AdminSyncNativeSession command
var AdminSyncNativeSessionCmd = &cobra.Command{
	Use:   "adminSyncNativeSession",
	Short: "Admin sync native session",
	Long:  `Admin sync native session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &party.AdminSyncNativeSessionParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errOK := partyService.AdminSyncNativeSessionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminSyncNativeSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSyncNativeSessionCmd.MarkFlagRequired("namespace")
	AdminSyncNativeSessionCmd.Flags().String("userId", "", "User id")
	_ = AdminSyncNativeSessionCmd.MarkFlagRequired("userId")
}
