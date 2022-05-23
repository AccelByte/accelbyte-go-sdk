// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CheckSeasonPurchasableCmd represents the CheckSeasonPurchasable command
var CheckSeasonPurchasableCmd = &cobra.Command{
	Use:   "checkSeasonPurchasable",
	Short: "Check season purchasable",
	Long:  `Check season purchasable`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.UserPurchasable
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &season.CheckSeasonPurchasableParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := seasonService.CheckSeasonPurchasableShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	CheckSeasonPurchasableCmd.Flags().String("body", "", "Body")
	CheckSeasonPurchasableCmd.Flags().String("namespace", "", "Namespace")
	_ = CheckSeasonPurchasableCmd.MarkFlagRequired("namespace")
	CheckSeasonPurchasableCmd.Flags().String("userId", "", "User id")
	_ = CheckSeasonPurchasableCmd.MarkFlagRequired("userId")
}
