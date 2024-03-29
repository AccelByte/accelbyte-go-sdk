// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ExistsAnyPassByPassCodesCmd represents the ExistsAnyPassByPassCodes command
var ExistsAnyPassByPassCodesCmd = &cobra.Command{
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
		ok, errOK := seasonService.ExistsAnyPassByPassCodesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ExistsAnyPassByPassCodesCmd.Flags().String("namespace", "", "Namespace")
	_ = ExistsAnyPassByPassCodesCmd.MarkFlagRequired("namespace")
	ExistsAnyPassByPassCodesCmd.Flags().String("userId", "", "User id")
	_ = ExistsAnyPassByPassCodesCmd.MarkFlagRequired("userId")
	ExistsAnyPassByPassCodesCmd.Flags().String("passCodes", "", "Pass codes")
}
