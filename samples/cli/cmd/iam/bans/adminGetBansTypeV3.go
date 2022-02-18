// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package bans

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetBansTypeV3Cmd represents the AdminGetBansTypeV3 command
var AdminGetBansTypeV3Cmd = &cobra.Command{
	Use:   "adminGetBansTypeV3",
	Short: "Admin get bans type V3",
	Long:  `Admin get bans type V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		bansService := &iam.BansService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &bans.AdminGetBansTypeV3Params{}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := bansService.AdminGetBansTypeV3(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
}
