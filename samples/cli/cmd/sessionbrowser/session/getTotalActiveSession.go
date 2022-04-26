// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetTotalActiveSessionCmd represents the GetTotalActiveSession command
var GetTotalActiveSessionCmd = &cobra.Command{
	Use:   "getTotalActiveSession",
	Short: "Get total active session",
	Long:  `Get total active session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionType, _ := cmd.Flags().GetString("sessionType")
		input := &session.GetTotalActiveSessionParams{
			Namespace:   namespace,
			SessionType: &sessionType,
		}
		ok, err := sessionService.GetTotalActiveSessionShort(input)
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
	GetTotalActiveSessionCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetTotalActiveSessionCmd.MarkFlagRequired("namespace")
	GetTotalActiveSessionCmd.Flags().StringP("sessionType", "", "", "Session type")
}
