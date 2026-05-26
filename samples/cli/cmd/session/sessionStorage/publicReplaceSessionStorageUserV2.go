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

// PublicReplaceSessionStorageUserV2Cmd represents the PublicReplaceSessionStorageUserV2 command
var PublicReplaceSessionStorageUserV2Cmd = &cobra.Command{
	Use:   "publicReplaceSessionStorageUserV2",
	Short: "Public replace session storage user V2",
	Long:  `Public replace session storage user V2`,
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
		userId, _ := cmd.Flags().GetString("userId")
		input := &session_storage.PublicReplaceSessionStorageUserV2Params{
			Body:      body,
			Namespace: namespace,
			SessionID: sessionId,
			UserID:    userId,
		}
		ok, errOK := sessionStorageService.PublicReplaceSessionStorageUserV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicReplaceSessionStorageUserV2Cmd.Flags().String("body", "", "Body")
	_ = PublicReplaceSessionStorageUserV2Cmd.MarkFlagRequired("body")
	PublicReplaceSessionStorageUserV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicReplaceSessionStorageUserV2Cmd.MarkFlagRequired("namespace")
	PublicReplaceSessionStorageUserV2Cmd.Flags().String("sessionId", "", "Session id")
	_ = PublicReplaceSessionStorageUserV2Cmd.MarkFlagRequired("sessionId")
	PublicReplaceSessionStorageUserV2Cmd.Flags().String("userId", "", "User id")
	_ = PublicReplaceSessionStorageUserV2Cmd.MarkFlagRequired("userId")
}
