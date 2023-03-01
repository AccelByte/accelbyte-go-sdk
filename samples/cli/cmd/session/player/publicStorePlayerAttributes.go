// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/player"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicStorePlayerAttributesCmd represents the PublicStorePlayerAttributes command
var PublicStorePlayerAttributesCmd = &cobra.Command{
	Use:   "publicStorePlayerAttributes",
	Short: "Public store player attributes",
	Long:  `Public store player attributes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &session.PlayerService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsPlayerAttributesRequestBody
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &player.PublicStorePlayerAttributesParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := playerService.PublicStorePlayerAttributesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicStorePlayerAttributesCmd.Flags().String("body", "", "Body")
	_ = PublicStorePlayerAttributesCmd.MarkFlagRequired("body")
	PublicStorePlayerAttributesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicStorePlayerAttributesCmd.MarkFlagRequired("namespace")
}
