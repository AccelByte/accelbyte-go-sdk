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

// CreateTierCmd represents the CreateTier command
var CreateTierCmd = &cobra.Command{
	Use:   "createTier",
	Short: "Create tier",
	Long:  `Create tier`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tierService := &seasonpass.TierService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.TierCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &tier.CreateTierParams{
			Body:      body,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := tierService.CreateTier(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	CreateTierCmd.Flags().StringP("body", "", "", "Body")
	CreateTierCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateTierCmd.MarkFlagRequired("namespace")
	CreateTierCmd.Flags().StringP("seasonId", "", "", "Season id")
	_ = CreateTierCmd.MarkFlagRequired("seasonId")
}
