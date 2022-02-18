// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package session

import (
	"encoding/json"
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := sessionService.GetTotalActiveSession(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	GetTotalActiveSessionCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetTotalActiveSessionCmd.MarkFlagRequired("namespace")
	GetTotalActiveSessionCmd.Flags().StringP("sessionType", "", "", "Session type")
}
