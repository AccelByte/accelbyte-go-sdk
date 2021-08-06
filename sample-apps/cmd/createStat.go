// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"

	"github.com/spf13/cobra"
)

// createStatCmd represents the createStat command
var createStatCmd = &cobra.Command{
	Use:   "createStat",
	Short: "Create Stat",
	Long:  `Create Stat`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("createStat called")
		socialService := &service.StatisticConfigService{
			SocialServiceClient: factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:     &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.StatCreate
		errContent := json.Unmarshal([]byte(bodyString), &body)
		if errContent != nil {
			return errContent
		}
		stat, err := socialService.CreateStat(namespace, body)
		response, err := json.MarshalIndent(stat, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(createStatCmd)
	createStatCmd.Flags().StringP("namespace", "n", "", "User namespace")
	createStatCmd.MarkFlagRequired("namespace")
	createStatCmd.Flags().StringP("body", "b", "", "Slot Body. Example `{\"Key1\":\"Value1\",\"Key2\":\"Value2\"}'")
	createStatCmd.MarkFlagRequired("body")
}
