// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sessionPlatform

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/session_platform"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RegisterXblSessionsCmd represents the RegisterXblSessions command
var RegisterXblSessionsCmd = &cobra.Command{
	Use:   "registerXblSessions",
	Short: "Register xbl sessions",
	Long:  `Register xbl sessions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionPlatformService := &platform.SessionPlatformService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.XblUserSessionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &session_platform.RegisterXblSessionsParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := sessionPlatformService.RegisterXblSessionsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RegisterXblSessionsCmd.Flags().String("body", "", "Body")
	_ = RegisterXblSessionsCmd.MarkFlagRequired("body")
	RegisterXblSessionsCmd.Flags().String("namespace", "", "Namespace")
	_ = RegisterXblSessionsCmd.MarkFlagRequired("namespace")
	RegisterXblSessionsCmd.Flags().String("userId", "", "User id")
	_ = RegisterXblSessionsCmd.MarkFlagRequired("userId")
}
