// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sessionStorage

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/session_storage"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminReadSessionStorageCmd represents the AdminReadSessionStorage command
var AdminReadSessionStorageCmd = &cobra.Command{
	Use:   "adminReadSessionStorage",
	Short: "Admin read session storage",
	Long:  `Admin read session storage`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionStorageService := &session.SessionStorageService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &session_storage.AdminReadSessionStorageParams{
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, errOK := sessionStorageService.AdminReadSessionStorageShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminReadSessionStorageCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminReadSessionStorageCmd.MarkFlagRequired("namespace")
	AdminReadSessionStorageCmd.Flags().String("sessionId", "", "Session id")
	_ = AdminReadSessionStorageCmd.MarkFlagRequired("sessionId")
}
