// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetProfanityListFiltersV1Cmd represents the adminGetProfanityListFiltersV1 command
var adminGetProfanityListFiltersV1Cmd = &cobra.Command{
	Use:   "adminGetProfanityListFiltersV1",
	Short: "Admin get profanity list filters V1",
	Long:  `Admin get profanity list filters V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		list_, _ := cmd.Flags().GetString("list")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminGetProfanityListFiltersV1Params{
			List:      list_,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := profanityService.AdminGetProfanityListFiltersV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetProfanityListFiltersV1Cmd)
	adminGetProfanityListFiltersV1Cmd.Flags().StringP("list", "l", " ", "List")
	_ = adminGetProfanityListFiltersV1Cmd.MarkFlagRequired("list")
	adminGetProfanityListFiltersV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetProfanityListFiltersV1Cmd.MarkFlagRequired("namespace")
}
