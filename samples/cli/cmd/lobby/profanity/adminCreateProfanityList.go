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

// AdminCreateProfanityListCmd represents the AdminCreateProfanityList command
var AdminCreateProfanityListCmd = &cobra.Command{
	Use:   "adminCreateProfanityList",
	Short: "Admin create profanity list",
	Long:  `Admin create profanity list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsAdminCreateProfanityListRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminCreateProfanityListParams{
			Body:      body,
			Namespace: namespace,
		}
		errInput := profanityService.AdminCreateProfanityListShort(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminCreateProfanityListCmd.Flags().StringP("body", "", "", "Body")
	_ = AdminCreateProfanityListCmd.MarkFlagRequired("body")
	AdminCreateProfanityListCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminCreateProfanityListCmd.MarkFlagRequired("namespace")
}
