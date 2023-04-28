// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic_cycle

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// GetUserStatCycleItemsReader is a Reader for the GetUserStatCycleItems structure.
type GetUserStatCycleItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserStatCycleItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserStatCycleItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserStatCycleItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserStatCycleItemsOK creates a GetUserStatCycleItemsOK with default headers values
func NewGetUserStatCycleItemsOK() *GetUserStatCycleItemsOK {
	return &GetUserStatCycleItemsOK{}
}

/*GetUserStatCycleItemsOK handles this case with default header values.

  successful operation
*/
type GetUserStatCycleItemsOK struct {
	Payload *socialclientmodels.UserStatCycleItemPagingSlicedResult
}

func (o *GetUserStatCycleItemsOK) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems][%d] getUserStatCycleItemsOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserStatCycleItemsOK) ToJSONString() string {
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

func (o *GetUserStatCycleItemsOK) GetPayload() *socialclientmodels.UserStatCycleItemPagingSlicedResult {
	return o.Payload
}

func (o *GetUserStatCycleItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.UserStatCycleItemPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserStatCycleItemsNotFound creates a GetUserStatCycleItemsNotFound with default headers values
func NewGetUserStatCycleItemsNotFound() *GetUserStatCycleItemsNotFound {
	return &GetUserStatCycleItemsNotFound{}
}

/*GetUserStatCycleItemsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12245</td><td>Stat cycle [{id}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type GetUserStatCycleItemsNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetUserStatCycleItemsNotFound) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems][%d] getUserStatCycleItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserStatCycleItemsNotFound) ToJSONString() string {
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

func (o *GetUserStatCycleItemsNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserStatCycleItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
