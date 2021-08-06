// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getBansType represents the getBansType command
var getBansType = &cobra.Command{
	Use:   "getBansType",
	Short: "Admin Get bans type",
	Long:  `Admin Get bans type `,
	RunE: func(cmd *cobra.Command, args []string) error {
		bansService := &service.BansService{
			IamClient:       factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		ok, err := bansService.AdminGetBansTypeV3()
		if err != nil {
			logrus.Error(err)
		} else {
			response, err := json.Marshal(ok)
			if err != nil {
				logrus.Error(err)
			} else {
				logrus.Infof("Response %s", response)
			}
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getBansType)
}
