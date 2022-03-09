// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package session

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetSessionByUserIDsCmd represents the GetSessionByUserIDs command
var GetSessionByUserIDsCmd = &cobra.Command{
	Use:   "getSessionByUserIDs",
	Short: "Get session by user I ds",
	Long:  `Get session by user I ds`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userIds, _ := cmd.Flags().GetString("userIds")
		input := &session.GetSessionByUserIDsParams{
			Namespace: namespace,
			UserIds:   userIds,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := sessionService.GetSessionByUserIDs(input)
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
	GetSessionByUserIDsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetSessionByUserIDsCmd.MarkFlagRequired("namespace")
	GetSessionByUserIDsCmd.Flags().StringP("userIds", "", "", "User ids")
	_ = GetSessionByUserIDsCmd.MarkFlagRequired("user_ids")
}
