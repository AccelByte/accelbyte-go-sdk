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

// AdminDeleteProfanityListCmd represents the AdminDeleteProfanityList command
var AdminDeleteProfanityListCmd = &cobra.Command{
	Use:   "adminDeleteProfanityList",
	Short: "Admin delete profanity list",
	Long:  `Admin delete profanity list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		list_, _ := cmd.Flags().GetString("list")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminDeleteProfanityListParams{
			List:      list_,
			Namespace: namespace,
		}
		errInput := profanityService.AdminDeleteProfanityListShort(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminDeleteProfanityListCmd.Flags().StringP("list", "", "", "List")
	_ = AdminDeleteProfanityListCmd.MarkFlagRequired("list")
	AdminDeleteProfanityListCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDeleteProfanityListCmd.MarkFlagRequired("namespace")
}
