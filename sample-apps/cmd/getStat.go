// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getStatCmd represents the getStat command
var getStatCmd = &cobra.Command{
	Use:   "getStat",
	Short: "Get stat",
	Long:  `Get stat`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("getStat called")
		socialService := &service.StatisticConfigService{
			SocialServiceClient: factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:     &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		statCode := cmd.Flag("statCode").Value.String()
		stat, err := socialService.GetStat(namespace, statCode)
		response, err := json.MarshalIndent(stat, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getStatCmd)
	getStatCmd.Flags().StringP("namespace", "n", "", "User namespace")
	getStatCmd.MarkFlagRequired("namespace")
	getStatCmd.Flags().StringP("statCode", "s", "", "Stat Code")
}
