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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUpdateProfanityListCmd represents the adminUpdateProfanityList command
var adminUpdateProfanityListCmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(adminUpdateProfanityListCmd)
	adminUpdateProfanityListCmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminUpdateProfanityListCmd.MarkFlagRequired("body")
	adminUpdateProfanityListCmd.Flags().StringP("list", "lt", " ", "List")
	_ = adminUpdateProfanityListCmd.MarkFlagRequired("list")
	adminUpdateProfanityListCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminUpdateProfanityListCmd.MarkFlagRequired("namespace")
}
