// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sessionStorage

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/session_storage"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicUpdateInsertSessionStorageLeaderCmd represents the PublicUpdateInsertSessionStorageLeader command
var PublicUpdateInsertSessionStorageLeaderCmd = &cobra.Command{
	Use:   "publicUpdateInsertSessionStorageLeader",
	Short: "Public update insert session storage leader",
	Long:  `Public update insert session storage leader`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionStorageService := &session.SessionStorageService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body map[string]interface{}
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &session_storage.PublicUpdateInsertSessionStorageLeaderParams{
			Body:      body,
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, errOK := sessionStorageService.PublicUpdateInsertSessionStorageLeaderShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicUpdateInsertSessionStorageLeaderCmd.Flags().String("body", "", "Body")
	_ = PublicUpdateInsertSessionStorageLeaderCmd.MarkFlagRequired("body")
	PublicUpdateInsertSessionStorageLeaderCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdateInsertSessionStorageLeaderCmd.MarkFlagRequired("namespace")
	PublicUpdateInsertSessionStorageLeaderCmd.Flags().String("sessionId", "", "Session id")
	_ = PublicUpdateInsertSessionStorageLeaderCmd.MarkFlagRequired("sessionId")
}
