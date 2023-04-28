// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reward

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// GetReward1Reader is a Reader for the GetReward1 structure.
type GetReward1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetReward1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetReward1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetReward1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/rewards/{rewardId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetReward1OK creates a GetReward1OK with default headers values
func NewGetReward1OK() *GetReward1OK {
	return &GetReward1OK{}
}

/*GetReward1OK handles this case with default header values.

  successful operation
*/
type GetReward1OK struct {
	Payload *platformclientmodels.RewardInfo
}

func (o *GetReward1OK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/rewards/{rewardId}][%d] getReward1OK  %+v", 200, o.ToJSONString())
}

func (o *GetReward1OK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetReward1OK) GetPayload() *platformclientmodels.RewardInfo {
	return o.Payload
}

func (o *GetReward1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.RewardInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetReward1NotFound creates a GetReward1NotFound with default headers values
func NewGetReward1NotFound() *GetReward1NotFound {
	return &GetReward1NotFound{}
}

/*GetReward1NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>34041</td><td>Reward [{rewardId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetReward1NotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetReward1NotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/rewards/{rewardId}][%d] getReward1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetReward1NotFound) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetReward1NotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetReward1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
