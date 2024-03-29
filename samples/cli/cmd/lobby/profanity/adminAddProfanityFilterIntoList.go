// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// AdminAddProfanityFilterIntoListCmd represents the AdminAddProfanityFilterIntoList command
var AdminAddProfanityFilterIntoListCmd = &cobra.Command{
	Use:   "adminAddProfanityFilterIntoList",
	Short: "Admin add profanity filter into list",
	Long:  `Admin add profanity filter into list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsAdminAddProfanityFilterIntoListRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		list_, _ := cmd.Flags().GetString("list")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminAddProfanityFilterIntoListParams{
			Body:      body,
			List:      list_,
			Namespace: namespace,
		}
		errOK := profanityService.AdminAddProfanityFilterIntoListShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminAddProfanityFilterIntoListCmd.Flags().String("body", "", "Body")
	_ = AdminAddProfanityFilterIntoListCmd.MarkFlagRequired("body")
	AdminAddProfanityFilterIntoListCmd.Flags().String("list", "", "List")
	_ = AdminAddProfanityFilterIntoListCmd.MarkFlagRequired("list")
	AdminAddProfanityFilterIntoListCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAddProfanityFilterIntoListCmd.MarkFlagRequired("namespace")
}
