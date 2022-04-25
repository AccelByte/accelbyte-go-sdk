// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdatePortCmd represents the UpdatePort command
var UpdatePortCmd = &cobra.Command{
	Use:   "updatePort",
	Short: "Update port",
	Long:  `Update port`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &dsmc.ConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsUpdatePortRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.UpdatePortParams{
			Body:      body,
			Name:      name,
			Namespace: namespace,
		}
		ok, err := configService.UpdatePortShort(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	UpdatePortCmd.Flags().StringP("body", "", "", "Body")
	_ = UpdatePortCmd.MarkFlagRequired("body")
	UpdatePortCmd.Flags().StringP("name", "", "", "Name")
	_ = UpdatePortCmd.MarkFlagRequired("name")
	UpdatePortCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdatePortCmd.MarkFlagRequired("namespace")
}
