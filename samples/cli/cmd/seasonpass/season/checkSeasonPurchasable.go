// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// checkSeasonPurchasableCmd represents the checkSeasonPurchasable command
var checkSeasonPurchasableCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := seasonService.CheckSeasonPurchasable(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(checkSeasonPurchasableCmd)
	checkSeasonPurchasableCmd.Flags().StringP("body", "b", " ", "Body")
	checkSeasonPurchasableCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = checkSeasonPurchasableCmd.MarkFlagRequired("namespace")
	checkSeasonPurchasableCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = checkSeasonPurchasableCmd.MarkFlagRequired("userId")
}
