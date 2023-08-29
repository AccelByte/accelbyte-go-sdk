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

// AdminDeleteUserSessionStorageCmd represents the AdminDeleteUserSessionStorage command
var AdminDeleteUserSessionStorageCmd = &cobra.Command{
	Use:   "adminDeleteUserSessionStorage",
	Short: "Admin delete user session storage",
	Long:  `Admin delete user session storage`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionStorageService := &session.SessionStorageService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &session_storage.AdminDeleteUserSessionStorageParams{
			Namespace: namespace,
			SessionID: sessionId,
		}
		errNoContent := sessionStorageService.AdminDeleteUserSessionStorageShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteUserSessionStorageCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteUserSessionStorageCmd.MarkFlagRequired("namespace")
	AdminDeleteUserSessionStorageCmd.Flags().String("sessionId", "", "Session id")
	_ = AdminDeleteUserSessionStorageCmd.MarkFlagRequired("sessionId")
}
