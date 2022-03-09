// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package equ8Config

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/e_q_u8_config"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateConfigCmd represents the UpdateConfig command
var UpdateConfigCmd = &cobra.Command{
	Use:   "updateConfig",
	Short: "Update config",
	Long:  `Update config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		equ8ConfigService := &basic.EQU8ConfigService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.ADTOForUpdateEqu8ConfigAPICall
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &e_q_u8_config.UpdateConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := equ8ConfigService.UpdateConfig(input)
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
	UpdateConfigCmd.Flags().StringP("body", "", "", "Body")
	UpdateConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateConfigCmd.MarkFlagRequired("namespace")
}
