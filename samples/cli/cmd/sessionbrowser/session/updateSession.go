// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionbrowser"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"
	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateSessionCmd represents the UpdateSession command
var UpdateSessionCmd = &cobra.Command{
	Use:   "updateSession",
	Short: "Update session",
	Long:  `Update session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionService := &sessionbrowser.SessionService{
			Client:          factory.NewSessionbrowserClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionbrowserclientmodels.ModelsUpdateSessionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionID, _ := cmd.Flags().GetString("sessionID")
		input := &session.UpdateSessionParams{
			Body:      body,
			Namespace: namespace,
			SessionID: sessionID,
		}
		ok, err := sessionService.UpdateSessionShort(input)
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
	UpdateSessionCmd.Flags().String("body", "", "Body")
	_ = UpdateSessionCmd.MarkFlagRequired("body")
	UpdateSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateSessionCmd.MarkFlagRequired("namespace")
	UpdateSessionCmd.Flags().String("sessionID", "", "Session ID")
	_ = UpdateSessionCmd.MarkFlagRequired("sessionID")
}
