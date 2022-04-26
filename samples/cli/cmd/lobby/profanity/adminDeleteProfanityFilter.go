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

// AdminDeleteProfanityFilterCmd represents the AdminDeleteProfanityFilter command
var AdminDeleteProfanityFilterCmd = &cobra.Command{
	Use:   "adminDeleteProfanityFilter",
	Short: "Admin delete profanity filter",
	Long:  `Admin delete profanity filter`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsAdminDeleteProfanityFilterRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		list_, _ := cmd.Flags().GetString("list")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminDeleteProfanityFilterParams{
			Body:      body,
			List:      list_,
			Namespace: namespace,
		}
		ok, err := profanityService.AdminDeleteProfanityFilterShort(input)
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
	AdminDeleteProfanityFilterCmd.Flags().StringP("body", "", "", "Body")
	_ = AdminDeleteProfanityFilterCmd.MarkFlagRequired("body")
	AdminDeleteProfanityFilterCmd.Flags().StringP("list", "", "", "List")
	_ = AdminDeleteProfanityFilterCmd.MarkFlagRequired("list")
	AdminDeleteProfanityFilterCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDeleteProfanityFilterCmd.MarkFlagRequired("namespace")
}
