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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateTierCmd represents the UpdateTier command
var UpdateTierCmd = &cobra.Command{
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
	UpdateTierCmd.Flags().StringP("body", "", " ", "Body")
	UpdateTierCmd.Flags().StringP("id", "", " ", "Id")
	_ = UpdateTierCmd.MarkFlagRequired("id")
	UpdateTierCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = UpdateTierCmd.MarkFlagRequired("namespace")
	UpdateTierCmd.Flags().StringP("seasonId", "", " ", "Season id")
	_ = UpdateTierCmd.MarkFlagRequired("seasonId")
}
