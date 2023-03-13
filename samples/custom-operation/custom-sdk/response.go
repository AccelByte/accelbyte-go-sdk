// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package custom_sdk

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

type GetReader struct {
}

func (o *GetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOk()
		if err := result.readResponse(response, consumer, nil); err != nil {
			return nil, err
		}

		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("requested url returns an error %d: %s", response.Code(), string(data))
	}
}

// Ok is a custom response
// whereas operation syncSteamInventory uses SyncSteamInventoryNoContent as the response
type Ok struct {
	Payload interface{}
}

func NewOk() *Ok {
	return &Ok{}
}

func (o *Ok) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
