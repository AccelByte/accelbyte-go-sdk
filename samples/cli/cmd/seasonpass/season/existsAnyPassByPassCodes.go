// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// existsAnyPassByPassCodesCmd represents the existsAnyPassByPassCodes command
var existsAnyPassByPassCodesCmd = &cobra.Command{
	Use:   "existsAnyPassByPassCodes",
	Short: "Exists any pass by pass codes",
	Long:  `Exists any pass by pass codes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		passCodesString := cmd.Flag("passCodes").Value.String()
		var passCodes []string
		errPassCodes := json.Unmarshal([]byte(passCodesString), &passCodes)
		if errPassCodes != nil {
			return errPassCodes
		}
		input := &season.ExistsAnyPassByPassCodesParams{
			Namespace: namespace,
			UserID:    userId,
			PassCodes: passCodes,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := seasonService.ExistsAnyPassByPassCodes(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(existsAnyPassByPassCodesCmd)
	existsAnyPassByPassCodesCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = existsAnyPassByPassCodesCmd.MarkFlagRequired("namespace")
	existsAnyPassByPassCodesCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = existsAnyPassByPassCodesCmd.MarkFlagRequired("userId")
	existsAnyPassByPassCodesCmd.Flags().StringP("passCodes", "p", " ", "Pass codes")
}
