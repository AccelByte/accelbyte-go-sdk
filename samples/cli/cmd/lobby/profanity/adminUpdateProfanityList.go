// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package profanity

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateProfanityListCmd represents the AdminUpdateProfanityList command
var AdminUpdateProfanityListCmd = &cobra.Command{
	Use:   "adminUpdateProfanityList",
	Short: "Admin update profanity list",
	Long:  `Admin update profanity list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsAdminUpdateProfanityList
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		list_, _ := cmd.Flags().GetString("list")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminUpdateProfanityListParams{
			Body:      body,
			List:      list_,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := profanityService.AdminUpdateProfanityList(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminUpdateProfanityListCmd.Flags().StringP("body", "", " ", "Body")
	_ = AdminUpdateProfanityListCmd.MarkFlagRequired("body")
	AdminUpdateProfanityListCmd.Flags().StringP("list", "", " ", "List")
	_ = AdminUpdateProfanityListCmd.MarkFlagRequired("list")
	AdminUpdateProfanityListCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = AdminUpdateProfanityListCmd.MarkFlagRequired("namespace")
}
