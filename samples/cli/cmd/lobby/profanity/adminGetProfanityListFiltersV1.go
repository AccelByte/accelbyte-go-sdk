// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package profanity

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetProfanityListFiltersV1Cmd represents the AdminGetProfanityListFiltersV1 command
var AdminGetProfanityListFiltersV1Cmd = &cobra.Command{
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
		ok, err := profanityService.AdminGetProfanityListFiltersV1Short(input)
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
	AdminGetProfanityListFiltersV1Cmd.Flags().StringP("list", "", "", "List")
	_ = AdminGetProfanityListFiltersV1Cmd.MarkFlagRequired("list")
	AdminGetProfanityListFiltersV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetProfanityListFiltersV1Cmd.MarkFlagRequired("namespace")
}
