// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package session

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/session"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetSessionCmd represents the GetSession command
var GetSessionCmd = &cobra.Command{
	Use:   "getSession",
	Short: "Get session",
	Long:  `Get session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &dsmc.SessionService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionID, _ := cmd.Flags().GetString("sessionID")
		input := &session.GetSessionParams{
			Namespace: namespace,
			SessionID: sessionID,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := sessionService.GetSession(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetSessionCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = GetSessionCmd.MarkFlagRequired("namespace")
	GetSessionCmd.Flags().StringP("sessionID", "", " ", "Session ID")
	_ = GetSessionCmd.MarkFlagRequired("sessionID")
}
