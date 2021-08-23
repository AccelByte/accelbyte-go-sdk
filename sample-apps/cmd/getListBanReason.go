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

// getListBanReason represents the getListBanReason command
var getListBanReason = &cobra.Command{
	Use:   "getListBanReason",
	Short: "Admin Get list ban reason",
	Long:  `Admin Get list ban reason`,
	RunE: func(cmd *cobra.Command, args []string) error {
		bansService := &service.BansService{
			IamClient:       factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		ok, err := bansService.AdminGetListBanReasonV3()
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
	rootCmd.AddCommand(getListBanReason)
}