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

// PublicUpdateInsertSessionStorageLeaderV2Cmd represents the PublicUpdateInsertSessionStorageLeaderV2 command
var PublicUpdateInsertSessionStorageLeaderV2Cmd = &cobra.Command{
	Use:   "publicUpdateInsertSessionStorageLeaderV2",
	Short: "Public update insert session storage leader V2",
	Long:  `Public update insert session storage leader V2`,
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
		input := &session_storage.PublicUpdateInsertSessionStorageLeaderV2Params{
			Body:      body,
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, errOK := sessionStorageService.PublicUpdateInsertSessionStorageLeaderV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicUpdateInsertSessionStorageLeaderV2Cmd.Flags().String("body", "", "Body")
	_ = PublicUpdateInsertSessionStorageLeaderV2Cmd.MarkFlagRequired("body")
	PublicUpdateInsertSessionStorageLeaderV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdateInsertSessionStorageLeaderV2Cmd.MarkFlagRequired("namespace")
	PublicUpdateInsertSessionStorageLeaderV2Cmd.Flags().String("sessionId", "", "Session id")
	_ = PublicUpdateInsertSessionStorageLeaderV2Cmd.MarkFlagRequired("sessionId")
}
