// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicCreateUserOrderCmd represents the publicCreateUserOrder command
var publicCreateUserOrderCmd = &cobra.Command{
	Use:   "publicCreateUserOrder",
	Short: "Public create user order",
	Long:  `Public create user order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.OrderCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &order.PublicCreateUserOrderParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := orderService.PublicCreateUserOrder(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicCreateUserOrderCmd)
	publicCreateUserOrderCmd.Flags().StringP("body", "b", " ", "Body")
	publicCreateUserOrderCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicCreateUserOrderCmd.MarkFlagRequired("namespace")
	publicCreateUserOrderCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicCreateUserOrderCmd.MarkFlagRequired("userId")
}