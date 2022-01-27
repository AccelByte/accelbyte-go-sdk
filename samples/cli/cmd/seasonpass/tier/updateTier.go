// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package tier

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/tier"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateTierCmd represents the updateTier command
var updateTierCmd = &cobra.Command{
	Use:   "updateTier",
	Short: "Update tier",
	Long:  `Update tier`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tierService := &seasonpass.TierService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.TierInput
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &tier.UpdateTierParams{
			Body:      body,
			ID:        id_,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := tierService.UpdateTier(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateTierCmd)
	updateTierCmd.Flags().StringP("body", "by", " ", "Body")
	updateTierCmd.Flags().StringP("id", "id", " ", "Id")
	_ = updateTierCmd.MarkFlagRequired("id")
	updateTierCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updateTierCmd.MarkFlagRequired("namespace")
	updateTierCmd.Flags().StringP("seasonId", "sd", " ", "Season id")
	_ = updateTierCmd.MarkFlagRequired("seasonId")
}
